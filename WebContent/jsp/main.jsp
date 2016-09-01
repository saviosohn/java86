<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<style type="text/css">

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
#t1img{height: 256px;  z-index: 1;}
/* 	 ////////////////////////////////////////////////////////// */
h1 {
	color: black ;
	
	font-size: 100px;
	position: relative;
	top: 250px;
	left: 250px;
	z-index: 99;
 	opacity: 0.7; 
}

#Rand_Banner {
	position: relative;
	z-index: 1;
	float: left;
	
}
.col-md-8 col-md-offset-2 {
z-index: 1;
}
.bgy { 
 position : relative;
 width: 100%; 

 top:-200px;
  opacity: 0.6;
  

 } 
</style>
</head>
<body>
	<div class="container">
		<div class="header">
			<%@ include file="/include/topMenu.jsp"%>
		</div>
		<div class="content">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<h1 id="time"></h1>
					<div id=Rand_Banner>
						<img class="bgy" src="${pageContext.request.contextPath}/images/run.jpg"
							border="0">
					</div>
					<div id=Rand_Banner>
						<img class="bgy" src="${pageContext.request.contextPath}/images/psh2.jpg"
							border="0">
					</div>
					<div id=Rand_Banner>
						<img class="bgy" src="${pageContext.request.contextPath}/images/teams.jpg"
							border="0">
					</div>
					<div id=Rand_Banner>
						<img class="bgy" src="${pageContext.request.contextPath}/images/kimjung.jpg"
							border="0">
					</div>
					<div id=Rand_Banner>
						<img class="bgy" src="${pageContext.request.contextPath}/images/cando.png"
							border="0">


					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		// 		function moveT2(){

		// 			var t2 = document.querySelector("#t2");
		// 			t2.style.top=-254+"px";
		// 		};
//////////////////////////////
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
			
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		function show_Banner(num) {
			for (i = 0; i < 5; i++) {
				if (num == i) {
					Rand_Banner[i].style.dispaly = "";
				} else {
					Rand_Banner[i].style.display = "none";
				}
			}
		}

		var R = Math.floor(Math.random() * 5);
		show_Banner(R);

		function showTime() {
			var currentDate = new Date();

			// <h1 id="time"></h1>
			// time이란 id를 갖는 엘리먼트를 얻어와 변수 time에 할당. 변수 time으로 접근 가능.
			var time = document.getElementById("time");

			// innerHTML : 시작태그<h1>과 종료태그</h1> 사이의 값
			// 변수 time이 가리키는 엘리먼트의 내용부분에 지역시간 값 할당
			time.innerHTML = currentDate.toLocaleTimeString();
			setTimeout(showTime, 1000); // 1초마다 함수 호출
		}
		showTime();
	</script>
</body>
</html>