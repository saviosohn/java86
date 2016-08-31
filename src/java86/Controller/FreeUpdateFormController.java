package java86.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.FreeDAO;
import java86.VO.FreeVO;

@WebServlet("/free/updateForm")
public class FreeUpdateFormController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int freeNo = Integer.parseInt(request.getParameter("freeNo")); 
		FreeDAO dao = new FreeDAO();
		FreeVO free = dao.selectFreeByNo(freeNo);
		request.setAttribute("free", free);
		
		RequestDispatcher rd = request.getRequestDispatcher("updateForm.jsp");
		rd.forward(request, response);
	}

}
