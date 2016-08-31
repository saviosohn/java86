<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- ----------------------------------------------------------------------------- -->

</head>
<body>
	<div class = "container-fluid" >
	<div class = "header">
	</div>
	<div class = "content">
	<div class="row">
  	<div class="col-md-8 col-md-offset-2">
	
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
	</div>
	</div>
	</div>
	</div>
	
</body>
</html>