<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- ----------------------------------------------------------------------------- -->

<style>
/* //////////////////////////////////////////////////////// */
* {
	margin: 0;
	padding: 0;
}

body {
	position: absolute;
	width: 100%
}

.container {
	position: relative;
	width: 100%;
	padding: 0;
}

.header {
	position: relative;
	height: 257px;
}

.content {
	position: relative;
}

#t1 {
	position: relative;
	width: 100%;
	height: 254px;
	margin: 0;
	padding: 0;
	text-align: center;
	box-sizing: border-box
}

#t2 {
	width: 100%;
	height: 223px;
	position: relative;
	top: -700px;
	background: rgba(255, 255, 255, 0.5);
}

#t3 {
	width: 43px;
	height: 43px;
	position: relative;
	top: -434px;
	left: 30px;
}

#tt1, #tt2, #tt3, #tt4, #tt5, #tt6 {
	float: left;
	margin-top: 30px;
	margin-left: 10px;
}
#tt7{float: right; position: relative; top : -220px; left: -30px; z-index: 99;}

#tt1 {
	margin-left: 140px;
}
/* 	#ta1 {clear: both; margin-top: 150px; border: 1px solid red; margin-top: 25px;float: left; } */
#ta3 {
	clear: both;
	
}



#ta2, #ta3, #ta4 {
	float: right;
	margin-top: 50px;
}
#t1img{height: 256px;}
/* 	 ////////////////////////////////////////////////////////// */
h2 { margin-top: -80px;}
</style>

</head>
<body>
	<div class="container" id="ctn">
		<div class=" header">
			<%@ include file="/include/topMenu.jsp"%>
		</div>
		<div class="content">

			<div class="row" id="ro">
				<div class="col-md-8 col-md-offset-2" id="col">

					<h2>게시글 등록</h2>
					<hr>
					<form method="post" action="write" enctype="multipart/form-data">
						제목 : <input type="text" size="70%" name="title" /><br> 닉네임 :
						<input type="text" size="30" name="freeId" /> 비밀번호 : <input
							type="password" size="15" name="pass" placeholder="숫자를 입력해주세요" /><br>
						내용 :
						<textarea rows="8" cols="80" name="fcontent"></textarea>
						<br> <input type="file" name="attachFile" /> <br> <input
							type="IMAGE" name="submit" value="submit" id="write"
							src="/java86/images/signup.png"
							onmouseover="this.src='/java86/images/signuphover.png'"
							onmouseout="this.src='/java86/images/signup.png'" border="0" />
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- </div> -->

	<script>
		// 		function moveT2(){

		// 			var t2 = document.querySelector("#t2");
		// 			t2.style.top=-254+"px";
		// 		};

		var x = -477;
		var y = -252;
		var i = 1;

		function showbSlide() {

			y -= 15;

			var obj = document.querySelector("#t2");
			obj.style.top = y + "px";
			if (y > -477) {
				setTimeout(showbSlide, 40);
			} else {
				y = -252;
				i--;
			}
		};

		function showSlide() {
			x += 15;

			var obj = document.querySelector("#t2");
			obj.style.top = x + "px";
			if (x < -255) {
				setTimeout(showSlide, 40);
			}

			else {

				x = -500;
				i++;
			}
		};

		function imgCh() {

			var image = document.getElementById('t3img1');
			if (image.src.match("button1")) {
				showSlide();
				image.src = "${pageContext.request.contextPath}/images/button2.png";
				image.setAttribute("onclick", "imgCh()");

			} else if (image.src.match("button2")) {
				showbSlide();
				image.src = "${pageContext.request.contextPath}/images/button1.png";
				image.setAttribute("onclick", "imgCh()");
			}
		};
		function start() {
			window.open("/java86/login/loginForm", "pop", "width=530, height=500");

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