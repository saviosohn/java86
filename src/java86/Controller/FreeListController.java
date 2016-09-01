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
import java86.VO.FreeVO;

@WebServlet("/free/list")
public class FreeListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchType = request.getParameter("searchType");
		System.out.println(searchType);
		
		String searchWord = request.getParameter("searchWord");
		
		
		FreeDAO dao = new FreeDAO();
		List<FreeVO>list = dao.selectFree();
		
	if(searchType != null){
		if(searchType.equals("title")){
			List<FreeVO>tlist = dao.selectFT(searchWord);
			request.setAttribute("tlist", tlist);
			RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
			rd.forward(request, response);
			return;
		}
		
		if(searchType.equals("freeId")){
			List<FreeVO>wlist = dao.selectFW(searchWord);
			request.setAttribute("wlist", wlist);
			RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
			rd.forward(request, response);
			return;
			
		}
		
	}
		
			
			request.setAttribute("list", list);
			
			RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
			rd.forward(request, response);
			return;
		}
		
		
		
	}
	

