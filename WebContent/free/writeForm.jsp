<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<style>

</style>
</head>
<body>
<div class= "container-fluid" id="ctn">
	<div class=" header">
<%-- 		<%@ %> --%>
	</div>
	<div class = " content">
	
		<div class="row" id="ro">
  <div class="col-md-8 col-md-offset-2" id="col">
	<div class = hi>

	<h2>게시글 등록</h2>
	<hr>
	<form method="post" action="write" enctype="multipart/form-data">
	제목 : <input  type="text" size="70%" name="title"/><br>
	닉네임 : <input type="text" size="30" name="freeId"/>
	비밀번호 : <input type="password" size="15" name="pass" placeholder="※숫자4자리※"/><br>
	내용 : <textarea rows="8" cols="80" name="content"></textarea> <br>
	첨부파일 : <input type="file" name ="attachFile"/> <br>
	<input type="IMAGE" name="submit" value="submit" id="write" src="/java86/images/signup.png" onmouseover="this.src='/java86/images/signuphover.png'"onmouseout="this.src='/java86/images/signup.png'"border="0"/>
	</form>
</div>
</div>
<div class="footer">
<%-- 	<%@ %> --%>
</div>


</div>
</div>
</div>
</body>
</html>