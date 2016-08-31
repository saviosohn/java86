<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta  charset=UTF-8">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- ----------------------------------------------------------------------------- -->
<style>
/* * { border: 1px solid black;} */

.im1{float: left; margin-left: 30px; padding: 0;}
.im2{clear: both;}
/* .im3{width: 68px; height: 92px;} */
</style>
</head>
<body>
<div class= "container-fluid" id="ctn">
	<div class= "header">
<%-- 		<%@ %> --%>
	</div>
	<div class = "content" >
			<div class="row"  id="ro">
  <div class="col-md-8 col-md-offset-2" id="col">
	 <h2>자유 게시판</h2>
	 <hr>
 	<div class="im1">
	 <a href='updateForm?freeNo=<c:out value="${free.freeNo}"/>'><img class="im3"  src="/java86/images/update.png" onmouseover="this.src='/java86/images/updatehover.png'"onmouseout="this.src='/java86/images/update.png'"border="0"/></a>
	</div>
 	<div class="im1">
	 <input class="im3" type="IMAGE" name="button" value="button" id="delete" src="/java86/images/delete.png" onclick="delchkwin();" onmouseover="this.src='/java86/images/deletehover.png'"onmouseout="this.src='/java86/images/delete.png'"border="0"></input>
	&nbsp; &nbsp;
	</div>
	
 	<div class="im1">
	<a href="list"><img class="im3" src="/java86/images/list.png" onmouseover="this.src='/java86/images/listhover.png'"onmouseout="this.src='/java86/images/list.png'"border="0"></a><br>
	</div>
	<div class="im2">
	  &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;수정&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;삭제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&emsp;목록

	 <br><br>
	 <hr>
	 </div>
	 <div class="warning">
	 번호 : <c:out  value="${free.freeNo }"/> <br>
	 제목 :	<c:out value="${free.title }"/><br>
	 닉네임 : <c:out value="${free.freeId }"/><br>
	 조회수 : <c:out value="${free.clicks }"/><br>
	           <input type="hidden" name="pass" value="${free.pass}" id="pass" />
	           <input type="hidden" name="freeNo" value="${free.freeNo}" id="freeNo" />
	
	 등록일시 :<fmt:formatDate var="regDate" value="${free.regDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
	 <c:out value="${regDate }"/><br>
	 첨부파일 : <a href="${pageContext.request.contextPath}/down?path=${file.filepath}&realName=${file.realname}&oriName=${file.oriname}">${file.oriname}</a> <br>
	 <hr>
	 <c:out value="${free.content}"/> <img width="500" src="${pageContext.request.contextPath}/upload/${file.filepath}/${file.realname}" >
	 <hr>
	 <c:if test ="${!empty file}">

	 </c:if>
	 </div>
	</div>
	<div class="footer">
<%-- 		<%@ %> --%>
	</div>
</div>
</div>
</div>
<script>

	
	function delchkwin() {
		var win = window.open("delchk.html",'', "width=400, height=400");
		win.pass = document.getElementById("pass").value;
		win.freeNo = document.getElementById("freeNo").value;
	}
	function goPage() {
		var freeNo= document.getElementById("freeNo").value;
	location.href = "/java86/free/delete?freeNo=" + freeNo ;
	}

		
	
</script>
</body>
</html>