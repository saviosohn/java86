package login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java86.DAO.MemberDao;
import java86.VO.MemberVO;

@WebServlet("/login/login")
public class LoginController extends HttpServlet {
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
	{
		String id = request.getParameter("id");
		MemberVO mvo = (new MemberDao()).loginMember(id, request.getParameter("pass"));
		if (id.equals(mvo.getMemId())) {	// Login success
			HttpSession session = request.getSession();
			session.setAttribute("user", mvo.getMemId());
			session.setAttribute("memberVO", mvo);
			response.sendRedirect(request.getContextPath() + "/index.jsp");
		} else {
			response.sendRedirect(request.getContextPath() + "/login/login");			
		}
	}
}
