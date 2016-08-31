package java86.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.FreeDAO;

@WebServlet("/free/delete")
public class FreeDeleteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int freeNo = Integer.parseInt(request.getParameter("freeNo"));
		FreeDAO dao = new FreeDAO();
		dao.deleteFree(freeNo);
		response.sendRedirect("list");
		
	}
	

}
