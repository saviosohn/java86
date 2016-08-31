<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/FineUpdate" method="post">
		
		<input type="hidden" name="fineNo" value="${fvo.fineNo}"/>
		<table>
			<tr>
			<th>ID</th>
			<td><input type="text" name="memId" value="${fvo.memId}" readonly/></td>
			</tr>
			
			<tr>
			<th>벌금</th>
			<td><input type="text" name="fineAmount"  value="${fvo.fineAmount}"/></td>
			</tr>
			
			<tr>
			<th>벌금내역</th>
			<td><input type="text" name="fineDetail"  value="${fvo.fineDetail}"/></td>
			</tr>
		</table>
		<input type="submit"  value="수정"/>
	</form>
</body>
</html>