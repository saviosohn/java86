<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/FineUpdate">
		<table>
			<tr>
			<th>번호</th>	
			<th>ID</th>	
			<th>이름</th>	
			<th>벌금</th>	
			<th>벌금내역</th>	
			<th>등록일</th>	
			<th>총액</th>	
			<th>비고</th>	
			</tr>
			<c:if test="${!empty fList}">
			<c:forEach var="f" items="${fList}">
			<tr>
			<td>${f.fineNo }</td>
			<td>${f.memId }</td>
			<td>${f.memName }</td>
			<td>${f.fineAmount }</td>
			<td>${f.fineDetail }</td>
			<td><fmt:formatDate var="fineDate1"  value="${f.fineDate }" pattern="yyyy-MM-dd"/>
				<c:out   value="${fineDate1 }" /></td>
			<td >${f.sum}</td>
			<td><input type="button" onclick="location='${pageContext.request.contextPath}/FineUpdate?findNo=${f.fineNo}'" value="수정">
			<input type="button" onclick="location='${pageContext.request.contextPath}/FineDelete?delNo=${f.fineNo}'" value="삭제">
			</td>
			</tr>
			</c:forEach>
			</c:if>
		</table>
		<input type="button" onclick="location='${pageContext.request.contextPath}/FineWrite'" value="등록">
		<input type="button" onclick="location='${pageContext.request.contextPath}/FineDelete'" value="전체삭제">
	</form>

</body>
</html>