package java86.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.FineDAO;
import java86.VO.FineVO;

public class FineWriteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher(request.getContextPath()+"/jsp/FineWrite.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FineDAO fDao =  new FineDAO();
		FineVO fvo = new FineVO();
		if(request.getParameter("fineDetail") != null){
				
		
		fvo.setMemId(request.getParameter("memId"));
		fvo.setMemName(request.getParameter("memName"));
		fvo.setFineAmount(Integer.parseInt(request.getParameter("fineAmount")));
		fvo.setFineDetail(request.getParameter("fineDetail"));
		
		fDao.insertFine(fvo);
		
		RequestDispatcher rd = request.getRequestDispatcher(request.getContextPath()+"FineListController");
		rd.forward(request, response);
		}
		
		
		request.getParameter("fvo");
		request.getParameter("");
		
		
		request.setAttribute("fvo",request.getParameter("fvo"));
		
		RequestDispatcher rd = request.getRequestDispatcher(request.getContextPath()+"/FineWrite");
		rd.forward(request, response);
	}
	
}
