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
import javax.servlet.http.HttpSession;

import java86.DAO.MessageDAO;
import java86.VO.MemberVO;
import java86.VO.MessageSRVO;
import java86.VO.MessageVO;

@WebServlet("/MessageTalk")
public class MessageTalk extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("memberVO");
		MessageDAO msDao = new MessageDAO();
		MessageSRVO srvo = new MessageSRVO();
		List<MessageVO> msList = new ArrayList<>();
		
		srvo.setmSendId(request.getParameter("mSendId"));
		srvo.setmRecvId(mvo.getMemId());
		
		msList = msDao.selectTalk(srvo);
		
		request.setAttribute("msList", msList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/MessageTalk.jsp");
		rd.forward(request, response);
		
		
		
	}
	
}
