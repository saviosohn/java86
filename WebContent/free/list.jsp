<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=UTF-8">
<title>자유 게시판</title>
<hr>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
#pen {
transition: .7S; 
}
table {
	width : 100%;
	
	
 border: 1px solid silver;
}

 
</style>
</head>
<body>
	<div class="container-fluid" id="ctn">
		<div class="header">
			<%-- 		<%@ %> --%>
		</div>
		<div class=" content">
			<div class="row" id="ro">
				<div class="col-md-8 col-md-offset-2" id="col">
					<div class = hi>
						<h2>자유 게시판</h2>
						전체 ${fn:length(list)}개 <br>
						<hr>
						<table  class="table table-striped" border="1px ">
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>닉네임</th>
								<th>조회수</th>
								<th>등록일</th>
							</tr>
							<c:choose>
								<c:when test="${!empty tlist}">
									<c:forEach var="free" items="${tlist}">
										<tr>
											<td><c:out value="${free.freeNo}" /></td>
											<td><a
												href="detail?freeNo=${free.freeNo}&fileNo=${free.fileNo}"><c:out
														value="${free.title }" /></a></td>
											<td><c:out value="${free.freeId }" /></td>
											<td><c:out value="${free.clicks }" /></td>
											<td><fmt:formatDate var="regDate"
													value="${free.regDate }" pattern="yyyy-MM-dd" />
												<c:out value="${regDate }" /></td>
										</tr>
									</c:forEach>

								</c:when>
								<c:when test="${!empty wlist}">
									<c:forEach var="free" items="${wlist}">
										<tr>
											<td><c:out value="${free.freeNo}" /></td>
											<td><a
												href="detail?freeNo=${free.freeNo}&fileNo=${free.fileNo}"><c:out
														value="${free.title }" /></a></td>
											<td><c:out value="${free.freeId }" /></td>
											<td><c:out value="${free.clicks }" /></td>
											<td><fmt:formatDate var="regDate"
													value="${free.regDate }" pattern="yyyy-MM-dd" />
												<c:out value="${regDate }" /></td>
										</tr>
									</c:forEach>

								</c:when>
							</c:choose>

							<c:forEach var="free" items="${list}">
								<tr>
									<td><c:out value="${free.freeNo}" /></td>
									<td><a
										href="detail?freeNo=${free.freeNo}&fileNo=${free.fileNo}"><c:out
												value="${free.title }" /></a></td>
									<td><c:out value="${free.freeId }" /></td>
									<td><c:out value="${free.clicks }" /></td>
									<td><fmt:formatDate var="regDate" value="${free.regDate }"
											pattern="yyyy-MM-dd" />
										<c:out value="${regDate }" /></td>
								</tr>
							</c:forEach>
							<c:if test="${empty list && empty wlist && empty tlist}">
								<tr>
									<td colspan="5">게시물이 존재하지 않습니다. 등록해주세요.</td>
								</tr>
							</c:if>
						</table>
						<a href="writeForm"><img id ="pen" src="/java86/images/write.png"
							onmouseover="this.src='/java86/images/writehover.png'"
							onmouseout="this.src='/java86/images/write.png'" border="0" /></a>

						<form name="mForm" onsubmit="return check();">
							<select name="searchType">
								<option value="">선택하세요</option>
								<option value="title">제목</option>
								<option value="freeId">닉네임</option>
							</select> <input type="text"  name="searchWord" placeholder="검색 할 글을 입력하세요 " />
							<button>검색</button>
						</form>


						<script>
							function check() {
							    if (document.search.searchWord.value == "") {
							        alert("검색어를 입력하세요.");
							        document.search.searchWord.focus();
							        return;
							    }
							    document.search.submit();
							}
							
							</script>
						</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>