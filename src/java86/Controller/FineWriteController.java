package java86.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.FineDAO;
import java86.VO.FineVO;


@WebServlet("/FineWrite")
public class FineWriteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("jsp/FineWrite.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		FineDAO fDao =  new FineDAO();
		FineVO fvo = new FineVO();
		
		if(request.getParameter("fineDetail") != null){
				
		
		fvo.setMemId(request.getParameter("memId"));
		fvo.setFineAmount(Integer.parseInt(request.getParameter("fineAmount")));
		fvo.setFineDetail(request.getParameter("fineDetail"));
		
		
		fDao.insertFine(fvo);
		
		response.sendRedirect(request.getContextPath()+"/FineList");
		
//		RequestDispatcher rd = request.getRequestDispatcher("/FineList");
//		rd.forward(request, response);
		return;
		}
		
		request.setAttribute("memId", (request.getParameter("memId")));
				
		

		RequestDispatcher rd = request.getRequestDispatcher("jsp/FineWrite.jsp");
		rd.forward(request, response);
		return;
	}
	
}
