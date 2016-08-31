package java86.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.MessageDAO;
import java86.VO.MessageVO;

@WebServlet("/MessageRDetail")
public class MessageRDetailController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MessageDAO mDao = new MessageDAO();
		MessageVO msvo = new MessageVO();
		
		int mNo = Integer.parseInt(request.getParameter("mNo"));
		msvo = mDao.selectRDetail(mNo);
		
		request.setAttribute("msvo", msvo);
		
		mDao.updateRCheck(mNo);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/MessageRDetail.jsp");
		rd.forward(request, response);
		
	}
	
}
