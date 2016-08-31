package java86.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java86.DAO.MemberDao;
import java86.VO.FileVO;
import java86.VO.MemberVO;

@WebServlet("/memberInfo")
public class MemberInfoController extends HttpServlet {
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("user");
		List<FileVO> fvoList =  (new MemberDao()).getFileListByKey(id);
		session.setAttribute("fvoList", fvoList);
		
		RequestDispatcher rd = request.getRequestDispatcher("memberInfo.jsp");
		rd.forward(request, response);
	}
}
