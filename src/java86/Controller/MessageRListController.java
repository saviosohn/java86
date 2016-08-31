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
import java86.VO.MessagePageVO;
import java86.VO.MessageVO;

@WebServlet("/MessageRList")
public class MessageRListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MessageDAO msDao = new MessageDAO();
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("memberVO");
		String memId = mvo.getMemId();
		int allNum = msDao.selectAllRecvM(memId);
		int page;
		if((request.getParameter("page")== null)) {
			page=1;
		}else{
			page = Integer.parseInt(request.getParameter("page"));
		}
		MessagePageVO mpvo = new MessagePageVO();
		
		mpvo.setmId(mvo.getMemId());
		mpvo.setPage(page);
		
		List<MessageVO> msList = new ArrayList<>();
	
		msList = msDao.selectRecvM(mpvo);
	
		
		int countList = 12;
		int countPage = 2;
		
		
		int totalCount = allNum;
		int totalPage = totalCount / countList;
		
		if (totalCount % countList > 0) {totalPage++;}
		if (totalPage < page) {page = totalPage;}
				
		int startPage = ((page - 1) / 2) * 2 + 1;
		int endPage = startPage + countPage - 1;
				
		if (endPage > totalPage) {endPage = totalPage;}
		
		request.setAttribute("startPage",startPage );
		request.setAttribute("endPage",endPage );
		request.setAttribute("page",page );
		request.setAttribute("totalPage",totalPage );
	
		
		request.setAttribute("msList", msList);
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/MessageRList.jsp");
		rd.forward(request, response);
		
	}
	
}
