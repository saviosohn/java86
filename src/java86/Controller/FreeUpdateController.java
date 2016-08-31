package java86.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.FreeDAO;
import java86.VO.FreeVO;

@WebServlet("/free/update")
public class FreeUpdateController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		FreeVO free = new FreeVO();
		free.setFreeNo(Integer.parseInt(request.getParameter("freeNo")));
		free.setTitle(request.getParameter("title"));
		free.setFreeId(request.getParameter("freeId"));
		free.setContent(request.getParameter("content"));
		
		FreeDAO dao = new FreeDAO();
		dao.updateFree(free);
		
		response.sendRedirect("list");
	}
	

}
