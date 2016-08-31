<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{ margin: 0 auto; }
  table,tr,td { padding: 0px; border-collapse:collapse; } 
 
  #talkMe { clear:both; background: #FAED7D;border-radius: 10px;  width:200px;  text-align: right; float: right; background-size:auto;}
  #talkYou { clear:both;  background: #8BBDFF;border-radius: 10px; width:200px;  text-align: left; margin: 0; float: left; background-size:cover;}
.content {width: 500px; height: 300px; overflow: auto;}
.container { width: 500px; height: 500px;}
</style>
</head>
<body>
<div class="container" >
	
	<div class="header">
		
		<%@ include file="/msInclude/msTop1.jsp" %>
	<hr color="#CACACA">
	</div>	
	<div class="content" >
		
		<table  width="500px"  cellpadding="0" cellspacing="0" style="table-layout: fixed;" border="0">
		<c:if test="${!empty msList }">
			<c:forEach var="msvo" items="${msList}">
				<c:choose>
					<c:when test="${msvo.mSendId eq user }">
						<div align="right" id="talkMe" >
							나 <fmt:formatDate value="${msvo.mRegDate}" pattern="yyyy-MM-dd hh:mm"/><br>
							${msvo.mTitle }<br><br>
							${msvo.mContent}<br>
						</div>	
						<br><br><br><br>
						<br>
					</c:when>
					<c:when test="${msvo.mRecvId eq user }">
						<div align="left" id="talkYou">
							${msvo.mSendName} <fmt:formatDate value="${msvo.mRegDate}" pattern="yyyy-MM-dd hh:mm"/><br>
							${msvo.mTitle }<br><br>
							${msvo.mContent}<br>
						</div>
						<br><br><br><br>
						<br>
					</c:when>
				</c:choose>
			</c:forEach>
		</c:if>
		</table>
	</div>
	<div class="footer">
	<hr color="#CACACA">
		<%@ include file="/msInclude/msBottom1.jsp" %>
	</div>

</div>
</body>
</html>