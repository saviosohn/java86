package java86.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java86.DAO.MessageDAO;
import java86.VO.MessageVO;
import jdk.nashorn.internal.ir.RuntimeNode.Request;

@WebServlet("/MessageCheck")
public class MessageCheckController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MessageDAO msDao = new MessageDAO();
		HttpSession session = request.getSession();
		String memId = (String)session.getAttribute("user");
		List<MessageVO> msList = new ArrayList<>();
		msList = msDao.selectCheckYN(memId);
		String html ="";
		PrintWriter out = response.getWriter();
//		System.out.println(msList);
		if(msList.size()==0){
			html="0";
			
		} else{
			html="1";
		}
		out.print(html);
	}
	
}
