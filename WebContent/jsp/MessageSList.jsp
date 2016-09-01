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
	*{ margin: 0 auto;}
  table,tr,td { padding: 0px; border-collapse:collapse; } 

 
 #mslcontent{height: 300px;}
 #table {height:252px; }
 a{text-decoration: none;}
</style>
</head>
<body>
<div class="container">
<form name= "d2Form"  onsubmit="return check2();" action="${pageContext.request.contextPath}/MessageSDelete" method="post">
	<div class="header">
		
		<%@ include file="/msInclude/msTop2.jsp" %>
	<hr color="#CACACA">
	</div>	
	<div id =mslcontent class="content">
		
		<table width="500px" height="20px" cellpadding="0" cellspacing="0" style="table-layout: fixed;" border="0">
			<tr >
				<td width="20px" ><img  align="left" src="${pageContext.request.contextPath}/images/memo_c.gif"/></td>
				<td width="20px"><img  align="left" src="${pageContext.request.contextPath}/images/chat_bubble.png"/></td>
				<td width="280px" ><img  align="left" src="${pageContext.request.contextPath}/images/memo_subject.gif"/></td>
				<td width="80px" ><img  align="left" src="${pageContext.request.contextPath}/images/sm_to.gif"/></td>
				<td width="100px" ><img  align="left" src="${pageContext.request.contextPath}/images/memo_date.gif"/></td>
				
			</tr>
		</table>
		<hr color="#CACACA">
			<div id= "table">
				<table width="500px" cellpadding="0" cellspacing="0" style="table-layout: fixed;" border="0">
				<c:if test="${!empty msList }">
					
					<c:forEach var="msvo" items="${msList}">
					
					
		<%-- 				<c:if test="${msvo.mSendDelYN  == 'n' && msvo.mSendId== user}"> --%>
						
						<tr>
							<td width="20px" ><input type="checkbox" name="msDelNo" value="${msvo.mNo}"/></td>
							<td width="20px"><a href="${pageContext.request.contextPath}/MessageTalk?mSendId=${msvo.mRecvId}"><img  align="left" src="${pageContext.request.contextPath}/images/chat_bubble.png"/></a></td>
							<td  width="280px"><a href="${pageContext.request.contextPath}/MessageSDetail?mNo=${msvo.mNo}"><c:out value="${msvo.mTitle}"/></a></td>
							<td width="80px"><c:out value="${msvo.mRecvName}"/></td>
							<td width="100px"><fmt:formatDate value="${msvo.mRegDate}" pattern="yyyy-MM-dd"/></td>
						</tr>	
		<%-- 				</c:if> --%>
					</c:forEach>
						
				</c:if>
				</table>
			</div>
			<div>
					 <c:if test= "${startPage > 1}"> <a href="${pageContext.request.contextPath}/MessageSList?page=1">처음</a></c:if>
						 <c:if test="${page > 1}" ><a href="${pageContext.request.contextPath}/MessageSList?page=${page - 1}">이전</a></c:if>
						 <c:forEach begin="${startPage}" end="${endPage}" var="i"> 
							    <c:choose>
							    <c:when test="${i == page}">
							        <a href="${pageContext.request.contextPath}/MessageSList?page=${i}"><strong>${i}</strong></a>
								</c:when>
    							<c:otherwise>
								       <a href="${pageContext.request.contextPath}/MessageSList?page=${i}">&nbsp;${i}&nbsp;</a>
							    </c:otherwise>
								</c:choose>
						</c:forEach>

						<c:if test="${page < totalPage}">
							<a href="${pageContext.request.contextPath}/MessageSList?page=${page + 1}">다음</a>
						</c:if>
						<c:if test="${endPage < totalPage}">
							<a href="${pageContext.request.contextPath}/MessageSList?page=${totalPage}">끝</a>
						</c:if>
			</div>
	</div>
	<div class="footer">
	<hr color="#CACACA">
		<%@ include file="/msInclude/msBottom1.jsp" %>
	</div>
	</form>
</div>

<script>
function check2(){
	var d = document.d2Form
	var del = d.msDelNo;
	var result = 0;
	for( var i = 0; i<del.length; i++){
		if(del[i].checked==true){
			result++;
		}
	}
	if(result == 0){
		alert("삭제할 대상을 체크하세요.")
			return false;
	}
	return true;
};
</script>
</body>
</html>