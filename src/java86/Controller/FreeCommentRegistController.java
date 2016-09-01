package java86.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java86.DAO.FreeDAO;
import java86.VO.FreeComment;

@WebServlet("/free/commentRegist")
public class FreeCommentRegistController extends HttpServlet {

	@Override
	public void doPost(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int freeNo = Integer.parseInt(request.getParameter("freeNo"));
		String freeId = request.getParameter("freeId");
		
		// 게시판과 파일 테이블에 저장할 글번호를 조회
		FreeComment comment = new FreeComment();
		comment.setNo(freeNo);
		comment.setContent(request.getParameter("content"));
		comment.setId(request.getParameter("freeId"));
		
		System.out.println(comment.getNo());
		System.out.println(comment.getContent());
		System.out.println(comment.getId());
		// 게시물 저장 처리 부탁..
		FreeDAO dao = new FreeDAO();
		dao.insertComment(comment);
		
		response.sendRedirect(request.getContextPath()+"/free/detail?freeNo=" + freeNo+ "&freeId="+freeId);
	}
}











