<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/FineSearch" method="post">
		<table>
			<tr>
				<th>이름</th>
				<td><input type="text" name="memName" size="30"/></td>
				<td><input type="submit" value="검색" /></td>
			</tr>
		</table>
	</form>
	<form action="${pageContext.request.contextPath}/FineWrite" method="post">
		<table>
			<tr>
				<th>이름</th>		
				<th>ID</th>		
				<th>비고</th>		
			</tr>
			
			<c:if test = "${!empty mList}">
			<c:forEach var="m" items="${mList}">
				<input type="hidden" name="memId" value="${m.memId}"/>
			<tr>
				
				<th>"${m.memName}"</th>
				<th>"${m.memId}"</th>
				<th><input type="submit" value="선택" /></th>
			</tr>
			</c:forEach>
			</c:if>
		</table>
	</form>
</body>
</html>