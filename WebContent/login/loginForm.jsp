<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<div class="container">
	
	<div class="content">
		<h2>로그인</h2>
		<hr>
		<form action="${pageContext.request.contextPath}/login/login" 
		      method="post">
			id : <input type="text" name="id" id="id1" /><br>
			pw : <input type="password" name="pass" id="pass"/><br>
			<input onclick="end1();" type="button" value="로그인" />
		</form>
	</div>

</div>
<script>
	function end1(){
		$.ajax({
			type :"POST",
			url : "${pageContext.request.contextPath}/login/login",
			data: {"id":$("#id1").val(),"pass":$("#pass").val() },
			success: function(result){
				alert(result);
				if(result =="s"){
					window.opener.document.location.reload();
					window.close(); 
					
				}else{

					window.location.reload();
				}
			}
			
		});
		
		
		
	}
	
	
</script>
</body>
</html>










