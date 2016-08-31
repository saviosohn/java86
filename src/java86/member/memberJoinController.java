package java86.member;

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

import java86.DAO.MemberDao;
import java86.VO.FileVO;
import java86.VO.MemberVO;
import util.BitFileRenamePolicy;

@WebServlet("/memberJoin")
public class memberJoinController extends HttpServlet {
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		ServletContext context = request.getServletContext();
		String realPath = context.getRealPath("/upload");
		
		String dirPath = "/images/member";
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd");
		dirPath += sdf.format(new Date());
		
		realPath += dirPath;
		
		File f = new File(realPath);
		if (!f.exists()) {
			f.mkdirs();
		}
		
		MultipartRequest mReq = new MultipartRequest(
			request,
			realPath,
			1024 * 1024 * 100,
			"utf-8",
			new BitFileRenamePolicy()
			);
				
		
		MemberVO mvo = new MemberVO();
		mvo.setMemId(mReq.getParameter("memId"));
		System.out.println(mvo.getMemId());
		mvo.setMemPassword(mReq.getParameter("password"));
		System.out.println(mvo.getMemPassword());
		mvo.setMemName(mReq.getParameter("memName"));
		System.out.println(mvo.getMemName());
		mvo.setMemEmailId(mReq.getParameter("emailId"));
		System.out.println(mvo.getMemEmailId());
		mvo.setMemEmailDomainIndex(Integer.parseInt(mReq.getParameter("emailDomain")));
		System.out.println(mvo.getMemEmailDomainIndex());
		mvo.setMemTel(mReq.getParameter("telNum"));
		System.out.println("TelNum : " + mvo.getMemTel());
		
		FileVO fvo = new FileVO();
		File imgFile = mReq.getFile("picture");
		if (imgFile != null) {
			String fileOriName = mReq.getOriginalFileName("picture");
			String fileRealName = mReq.getFilesystemName("picture");
			long fileSize = imgFile.length();
			
			fvo.setFileRealName(fileRealName);
			fvo.setFileOriName(fileOriName);
			fvo.setFileSize(fileSize);
			fvo.setFilePath(realPath);
			fvo.setRelativeKey(mvo.getMemId());
			fvo.setRelativeTbl("member");
			fvo.setFileType("image");
		}
		int result = (new MemberDao()).insertMember(mvo);
		if ((result > 0) && (imgFile != null))(new MemberDao()).insertMemberImage(fvo);
		
		if (result > 0) {
			
		}
		
		//System.out.println(request.getContextPath());
		response.sendRedirect(request.getContextPath() + "/index.jsp");
	}

}
