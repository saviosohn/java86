<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<%@ include file="/include/topMenu.jsp"%>
		</div>
		<div class="content">
			<button onclick="start()">쪽지함</button>

			<script>
				function start() {
								window.open("/java86/MessageRList", "pop", "width=530, height=500");

				};
			</script>

		</div>
		<div class="footer">
			<%@ include file="/include/bottom.jsp"%>
		</div>
	</div>
</body>
</html>





