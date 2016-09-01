package java86.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.FreeDAO;
import java86.VO.FreeComment;
import java86.VO.FreeFile;
import java86.VO.FreeVO;
@WebServlet("/free/detail")
public class FreeDetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int findNo = Integer.parseInt(request.getParameter("freeNo"));
//		int fileNo = Integer.parseInt(request.getParameter("fileNo"));
		FreeDAO dao = new FreeDAO();
		FreeVO free = dao.selectFreeByNo(findNo);
		FreeFile file = new FreeFile();
		try {
			request.setAttribute(
					"commentNo", Integer.parseInt(
							request.getParameter("commentNo")));	
		} catch (NumberFormatException e) { }
		
		
		file = dao.selectBoardFileByNo(findNo);
		 dao.updateClicks(findNo);
	
		request.setAttribute("free", free);		
		request.setAttribute("file", file);		
		
		List<FreeComment> commentList = dao.selectCommentByNo(findNo);
		request.setAttribute("commentList", commentList);
		
		RequestDispatcher rd = request.getRequestDispatcher("detail.jsp");
		rd.forward(request, response);
	}

	
}
