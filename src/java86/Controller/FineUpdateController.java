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

@WebServlet("/FineUpdate")
public class FineUpdateController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		FineDAO fDao = new FineDAO();
		FineVO fvo = new FineVO();
		int findNo = Integer.parseInt(request.getParameter("findNo"));
		
		fvo = fDao.updateList(findNo);
		request.setAttribute("fvo",fvo);
		
		System.out.println(fvo.getFineNo());
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/FineUpdate.jsp");
		rd.forward(request, response);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		FineDAO fDao = new FineDAO();
		FineVO fvo = new FineVO();
		System.out.println(request.getParameter("fineNo"));
		System.out.println(request.getParameter("memId"));
		System.out.println(request.getParameter("fineAmount"));
		System.out.println(request.getParameter("fineDetail"));
		
		fvo.setFineNo(Integer.parseInt(request.getParameter("fineNo")));
//		fvo.setMemId(request.getParameter("memId"));
		fvo.setFineAmount(Integer.parseInt(request.getParameter("fineAmount")));
		fvo.setFineDetail(request.getParameter("fineDetail"));
		
		System.out.println(fvo.getFineAmount());
		System.out.println(fvo.getFineNo());
		System.out.println(fvo.getFineDetail());
		
		fDao.updateFine(fvo);
		
		response.sendRedirect(request.getContextPath()+"/FineList");
	}
	
}
