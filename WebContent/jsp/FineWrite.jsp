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
	<form id ="fwForm" action="${pageContext.request.contextPath}/FineWrite" method="post" onsubmit="return chk1();">
		<input type="hidden" name="memName" value="${mList.memName}" />
		<c:out value="${memId}"/>
		<table>
			<tr>
			<th>ID</th>
			<td><input id="mId" type="text" name="memId" value="${memId}" readonly/>
				<input type="button" value="검색" 
				onclick="location='${pageContext.request.contextPath}/FineSearch'"/>
			</td>
			</tr>
			<tr>
			<th>벌금</th>
			<td><input type="text" name="fineAmount" /></td>
			</tr>
			<tr>
			<th>벌금내역</th>
			<td><input type="text" name="fineDetail" /></td>
			</tr>
		</table>
		<input type="submit"  value="등록"/>
	</form>
		<script>
		
		function chk1(){
			var fw = document.querySelector("#fwForm");
			
			if(fw.memId.value==""){
				alert("이름을 입력하세요");
				return false;
			}
			if(fw.fineAmount.value==""){
				alert("금액을 입력하세요");
				return false;
			}
			
			
			if(typeof(fw.fineAmount.value)!="number" ){
				alert("숫자만 입력하세요")
			}
			if(fw.fineDetail.value==""){
				alert("벌금내역을 입력하세요");
				return false;
			}
			return true;
		};
		
		</script>
</body>
</html>