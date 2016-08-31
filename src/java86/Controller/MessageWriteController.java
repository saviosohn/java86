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

@WebServlet("/MessageWrite")
public class MessageWriteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("memName"));
		if(request.getParameter("mSendId")!= null){
			request.setAttribute("memId",request.getParameter("mSendId") );
			request.setAttribute("memName",request.getParameter("memName") );
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/MessageWrite.jsp");
		rd.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MessageVO msvo = new MessageVO();
		MessageDAO msDao = new MessageDAO();
		
		if(request.getParameter("mContent") != null){
			System.out.println("나오냐!!!" +request.getParameter("mSendId"));
			System.out.println("나오냐!!!" +request.getParameter("mSendName"));
			
			
			msvo.setmRecvId(request.getParameter("mRecvId"));
			msvo.setmRecvName(request.getParameter("mRecvName"));
			msvo.setmSendId(request.getParameter("mSendId"));
			msvo.setmSendName(request.getParameter("mSendName"));
			msvo.setmTitle(request.getParameter("mTitle"));
			msvo.setmContent(request.getParameter("mContent"));
			
			System.out.println("나오냐구 "+request.getParameter("mRecvName"));
			
			msDao.insertMessage(msvo);
			
			response.sendRedirect(request.getContextPath()+"/MessageRList");

			return;
			}
		request.setAttribute("memId", (request.getParameter("memId")));
		request.setAttribute("memName", (request.getParameter("memName")));
				

		RequestDispatcher rd = request.getRequestDispatcher("jsp/MessageWrite.jsp");
		rd.forward(request, response);
		return;
	}
	
}
