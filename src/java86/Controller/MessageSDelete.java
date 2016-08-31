package java86.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.MessageDAO;
import java86.VO.MessageVO;

@WebServlet("/MessageSDelete")
public class MessageSDelete extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] msDelNo = request.getParameterValues("msDelNo");
		MessageDAO msDao = new MessageDAO();
		MessageVO msvo = new MessageVO();
		
		for(int i = 0 ; i<msDelNo.length ; i++){
			System.out.println(msDelNo[i]);
			int msDelno = Integer.parseInt(msDelNo[i]);
			
			msvo = msDao.selectRDetail(msDelno);
			
			if(msvo.getmRecvDelYN().equalsIgnoreCase("y")){
				System.out.println(msDelno);
				msDao.deleteMessage(msDelno);
		
			}else {
				msDao.updateSMessage(msDelno);
				
			}
		}
		response.sendRedirect(request.getContextPath()+"/MessageSList");
		return;
	}
	
}
