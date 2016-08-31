<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{ margin: 0 auto;}
  table,tr,td { padding: 0px; border-collapse:collapse;} 
/*   html,body,table,tr,td {border: 1px solid black;}   */

  
</style>
</head>
<body>
<div class="container">
	<form name="wForm" onsubmit="return check1();" action="${pageContext.request.contextPath}/MessageWrite" method="post">
	<div class="header">
		
		<%@ include file="/msInclude/msTopW.jsp" %>
	<hr color="#CACACA">
	</div>	
	<div class="content" >
		<input type="hidden" name="mSendId" value="${user}" />
		<input type="hidden" name="mRecvId" value="${memId}" />
		<input type="hidden" name="mSendName" value="${memberVO.memName}" />
		<table width="500px" height="300px" cellpadding="0" cellspacing="0" style="table-layout: fixed;" border="0">
				
			<tr>
				<td width="30%">이름</td>
				<td width="70%">
				<input  type="text" name="mRecvName" value="${memName}" readonly/>
				<input type="button" value="검색" 
				onclick="location='${pageContext.request.contextPath}/MessageSearch'"/>
				</td>
			</tr>
			<tr>
				<td width="40%">제목</td>
				<td width="70%"><input  type="text" name="mTitle" size="38px"/></td>
			</tr>
			<tr>
				<td width="30%">내용</td>
				<td width="70%"><textarea  rows="10%" cols="40px" name="mContent"></textarea></td>
			</tr>
		</table>
		
	</div>
	<div class="footer">
	<hr color="#CACACA">
		<%@ include file="/msInclude/msBottom2.jsp" %>
	</div>
		</form>
</div>

<script>
	function check1(){
		var f = document.wForm;
		var name = f.mRecvName;
		var title = f.mTitle;
		var content = f.mContent;
		
		if(name.value == ""){
			alert("이름을 입력하세요.");
			name.focus();
			return false;
		}
		if(title.value == ""){
			alert("제목을 입력하세요.");
			title.focus();
			return false;
		}
		if(content.value == ""){
			alert("내용을 입력하세요.");
			content.focus();
			return false;
		}
		return true;
	};

</script>
</body>
</html>