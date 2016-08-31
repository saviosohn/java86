<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button onclick="start()">쪽지함</button>
	
	<script>
		function start(){
			window.open("../jsp/MessageRList.jsp", "pop", "width=500, height=500");
// 			window.open("../MessageRList", "pop", "width=500, height=500");

			
		};
	</script>
	
</body>
</html>