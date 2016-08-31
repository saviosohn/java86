<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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



</style>
</head>
<body>
<div class="container-fluid">
	<div class="header">
<%-- 		<%@  %> --%>
	</div>
	<div class="content">
	
		<div class="row">
  <div class="col-md-8 col-md-offset-2">
		<hr>
		<h2>자유 게시판</h2>
		<hr>
		<form action="update" method="post">
		<input type="hidden" name= 'freeNo' value ='<c:out value="${free.freeNo}"/>'/>
		  제목 : <input type='text' name='title' size='70%' value='<c:out value="${free.title}" />' /><br>
		    닉네임 : <input type='text' name='FreeId' size='30'  value='<c:out value="${free.freeId}" />' /><br>
		   비밀번호 : <input type='text' name='pass' size='15'  value='<c:out value="${free.pass}" />' /><br>
		    내용 : <textarea name='content' rows='8' cols='80'><c:out value="${free.content}" /></textarea><br>
		  <input type="IMAGE" name="submit" value="submit" id="mod" src="/java86/images/signup.png" onmouseover="this.src='/java86/images/signuphover.png'"onmouseout="this.src='/java86/images/signup.png'"border="0"/>
		  
		</form> 
	</div>
	<div class="footer">
<%-- 		<%@  %> --%>
	</div>
	</div>
	
</div>
</div>	
</body>
</html>