<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
	#pop1 { position: fixed; top: -255px; left: -255px; width: 84px; height: 84px; 
		animation-name: pop1;	/* 애니메이션 이름. 필수 항목. 맨 처음 와야 함. */
		animation-duration: 0.5s;	/* 동작 시간. 필수 항목 */
		animation-iteration-count: infinite;	/* 동작 횟수 */
		animation-direction: reverse;	/* 동작 방향 : normal, reverse, alternate */
		animation-direction: alternate;}
		
		@keyframes pop1 {
		0% { transform: scale(0.7);}
		100% { transform: scale(0.8);}
	}
	#pop1img {width: 50px;}	
</style>
</head>
<body>
	<div class="container">
		<div class="header">
			<%@ include file="/include/topMenu.jsp"%>
		</div>
		<div class="content">
			<button onclick="start()">쪽지함</button>
			<br>
			<div id= "pop1"><img id="pop1img" src="${pageContext.request.contextPath}/images/popletter.png"></div>


		</div>

	</div>
	<script>
	function start() {
		window.open("/java86/MessageRList", "pop", "width=530, height=500");

};
	
	
	
	
		function MessageChk(){
			$.ajax({
				url:"${pageContext.request.contextPath}/MessageCheck",
				success : function(result){
					console.log(result);
					if(result == "1" ){
						var pop1 = document.querySelector("#pop1");
						pop1.style.top="200px";
						pop1.style.left="30px";
					}else{
						var pop1 = document.querySelector("#pop1");
						pop1.style.top="-255px";
						pop1.style.left="-255px";
						
					}
				}
			})
		
		};
		var user = "${user}";
		if(user!= ""){
			
			
			setInterval(MessageChk, 3000);
		
		}
		
	</script>
</body>
</html>





