package java86.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.FineDAO;
import java86.VO.FineVO;

public class FineListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FineDAO fDao = new FineDAO();
		List<FineVO> fList = new ArrayList<>();
		
		fList = fDao.selectFine();
		
		request.setAttribute("fList", fList);
		
		RequestDispatcher rd = request.getRequestDispatcher(request.getContextPath()+"/jsp/FineList.jsp");
		rd.forward(request, response);
	}
	
}
