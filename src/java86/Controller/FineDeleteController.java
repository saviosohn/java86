package java86.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.FineDAO;

@WebServlet("/FineDelete")
public class FineDeleteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FineDAO fDao = new FineDAO();
		
		if(request.getParameter("delNo")!=null){
			fDao.deleteFine(Integer.parseInt(request.getParameter("delNo")));
			RequestDispatcher rd = request.getRequestDispatcher("/FineList");
			rd.forward(request, response);
			return;
		}
		fDao.deleteAllFine();
		
		RequestDispatcher rd = request.getRequestDispatcher("/FineList");
		rd.forward(request, response);
		return;
	}
	
}
