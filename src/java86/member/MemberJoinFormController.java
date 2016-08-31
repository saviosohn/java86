package java86.member;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.MemberDao;
import java86.VO.CodeVO;

@WebServlet("/memberJoinForm")
public class MemberJoinFormController extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		ArrayList<CodeVO> mailDomainList = (ArrayList<CodeVO>)(new MemberDao()).getEmailDomain();
//		for (CodeVO cvo : mailDomainList) {
//			System.out.println(cvo.getCodeValue() + ":" + cvo.getCodeName());
//		}
		request.setAttribute("mailDomainList", mailDomainList);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/memberJoinForm.jsp");
		rd.forward(request, response);
		
	}
}
