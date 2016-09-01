package java86.Controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import java86.DAO.FreeDAO;
import java86.VO.FreeFile;
import java86.VO.FreeVO;
import util.BitFileRenamePolicy;
@WebServlet("/free/write")
public class FreeWriteController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		ServletContext context = request.getServletContext();
		String path = context.getRealPath("/upload");
		
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd");
		String datePath = sdf.format(new Date());
		
		String savePath = path + datePath;
		
		File f = new File(savePath);
		if (!f.exists()) f.mkdirs();
		
		
		
		MultipartRequest mRequest = new MultipartRequest( 
				request, 
				savePath, 
				1024* 1024 *10,
				"UTF-8",
				new BitFileRenamePolicy()
				
				);
	
		FreeVO free = new FreeVO();
		FreeDAO dao = new FreeDAO();
		
		int fno = 0;
		File file = mRequest.getFile("attachFile");
		if ( file != null) {
			String oriname = mRequest.getOriginalFileName("attachFile");
			String realname = mRequest.getFilesystemName("attachFile");
			
			FreeFile freeFile = new FreeFile();
			freeFile.setOriname(oriname);
			freeFile.setRealname(realname);
			freeFile.setFilepath(datePath);
			
			
			
			fno = dao.insertFreeFile(freeFile);
		}
		free.setTitle(mRequest.getParameter("title"));
		free.setFreeId(mRequest.getParameter("freeId"));
		free.setPass(Integer.parseInt(mRequest.getParameter("pass")));
		free.setContent(mRequest.getParameter("fcontent"));
		free.setFileNo(fno);
		dao.insertFree(free);
		response.sendRedirect("list");
	}

}
