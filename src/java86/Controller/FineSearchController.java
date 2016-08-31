package java86.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.FineDAO;
import java86.VO.MemberVO;

@WebServlet("/FineSearch")
public class FineSearchController extends HttpServlet{
	
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/FineSearch.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		List<MemberVO> mList = new ArrayList<>();
		FineDAO fDao = new FineDAO();
		String memName = request.getParameter("memName");
		mList = fDao.selectNameId(memName);
		
		
		request.setAttribute("mList", mList);
	
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/FineSearch.jsp");
		rd.forward(request, response);
	}
	
}
