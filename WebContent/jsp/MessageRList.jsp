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
  table,tr,td { padding: 0px; border-collapse:collapse;} 
 
   #mslcontent{height: 300px;}
   #table {height:252px; }
</style>
</head>
<body>
<div class="container">
	<form name= "d1Form"  onsubmit="return check2();" action="${pageContext.request.contextPath}/MessageRDelete" method="post">
	<div class="header">
		
		<%@ include file="/msInclude/msTop1.jsp" %>
	<hr color="#CACACA">
	</div>	
	<div id =mslcontent class="content">
		<table width="500px" height="20px" cellpadding="0" cellspacing="0" style="table-layout: fixed;" border="0">
			<tr >
				<td width="20px" ><img  align="left" src="${pageContext.request.contextPath}/images/memo_c.gif"/></td>
				<td width="20px"><img  align="left" src="${pageContext.request.contextPath}/images/chat_bubble.png"/></td>
				<td width="280px" ><img  align="left" src="${pageContext.request.contextPath}/images/memo_subject.gif"/></td>
				<td width="80px" ><img  align="left" src="${pageContext.request.contextPath}/images/memo_from.gif"/></td>
				<td width="100px" ><img  align="left" src="${pageContext.request.contextPath}/images/memo_date.gif"/></td>
				
			</tr>
		</table>
		<hr color="#CACACA">
		<div id= "table">
		<table width="500px" cellpadding="0" cellspacing="0" style="table-layout: fixed;" border="0">
		<c:if test="${!empty msList }">
		
			
<%-- 			<c:set var="count" value="0"/> --%>
<%-- 			<c:forEach begin="${(page-1)*13}" end="${((page-1)+(12*n))}" var="i" > --%>
<%-- 				<c:if test="${msvo.mRecvDelYN == 'n' && msvo.mRecvId== user}"> --%>
<%-- 					<c:set value="${count+1}" var="count"/> --%>
<%-- 					<c:if test=" ${ (count  ge ((page-1)*13)) and (count le ((page-1)+(12*page))) }"> --%>
				
				<c:forEach var="msvo" items="${msList}">
 					
						<tr>
							<td width="20px"><input type="checkbox" name="msDelNo" value="${msvo.mNo}"/></td>
							<td width="20px"><a href="${pageContext.request.contextPath}/MessageTalk?mSendId=${msvo.mSendId}"><img  align="left" src="${pageContext.request.contextPath}/images/chat_bubble.png"/></a></td>
							<td width="280px"><a href="${pageContext.request.contextPath}/MessageRDetail?mNo=${msvo.mNo}"><c:out value="${msvo.mTitle}"/></a></td>
							<td width="80px"><c:out value="${msvo.mSendName}"/></td>
							<td width="100px"><fmt:formatDate value="${msvo.mRegDate}" pattern="yyyy-MM-dd"/></td>
						</tr>
		
		   		</c:forEach>
				
				
		</c:if>
				
		</table>
			</div>	
				<div>
					 <c:if test= "${startPage > 1}"> <a href="${pageContext.request.contextPath}/MessageRList?page=1">처음</a></c:if>
						 <c:if test="${page > 1}" ><a href="${pageContext.request.contextPath}/MessageRList?page=${page - 1}">이전</a></c:if>
						 <c:forEach begin="${startPage}" end="${endPage}" var="i"> 
							    <c:choose>
							    <c:when test="${i == page}">
							        <a href="${pageContext.request.contextPath}/MessageRList?page=${i}"><strong>${i}</strong></a>
								</c:when>
    							<c:otherwise>
								     <a href="${pageContext.request.contextPath}/MessageRList?page=${i}">  &nbsp;${i}&nbsp;</a>
							    </c:otherwise>
								</c:choose>
						</c:forEach>

						<c:if test="${page < totalPage}">
							<a href="${pageContext.request.contextPath}/MessageRList?page=${page + 1}">다음</a>
						</c:if>
						<c:if test="${endPage < totalPage}">
							<a href="${pageContext.request.contextPath}/MessageRList?page=${totalPage}">끝</a>
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
		var d = document.d1Form
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