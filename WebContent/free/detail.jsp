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


.im1{float: left; margin-left: 30px; padding: 0;}
.im2{clear: both;}
/* .im3{width: 68px; height: 92px;} */

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
<div class= "container" id="ctn">
	<div class= "header">
<%@ include file="/include/topMenu.jsp"%>
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
	 <c:out value="${free.content}"/> 
	 <c:if test ="${!empty file}">
<img width="500" src="${pageContext.request.contextPath}/upload/${file.filepath}/${file.realname}" >
	 </c:if>
	 <hr>
	 <div id="comment">
			<form method="post" action="${pageContext.request.contextPath}/free/commentRegist">
				<input type="hidden" name="freeNo" value="${free.freeNo}" />	
				<input type="hidden" name="freeId" value="${user}" />	
				<table width="70%">
				<tr>
					<td><c:out value="${user}" /></td>
					<td><textarea name="content" rows="2" cols="60"></textarea></td>
					<td><input type="submit" value="등록" /></td>
				</tr>	
				</table>
			</form>
		</div>
		
		<form action="commentUpdate" method="post">
			<input type="hidden" name="no" value="${free.freeNo}" />
			<input type="hidden" name="commentNo" value="${commentNo}" />
		<div id="commentList">
			
		  <table width='80%' border='1'>
		  <tr>
			<c:forEach var="comment" items="${commentList}">
			<c:choose>
		  		<c:when test="${commentNo eq comment.commentNo}">	
					<tr>
					  <td><c:out value="${comment.id}" /></td>
					  <td>
					  	<textarea name="content" rows="2" cols="60"><c:out value="${comment.content}" /></textarea>
					  </td>
					  <td colspan="2">
					  	  <input type="submit" value="수정" />	
					  </td>
					 </tr>
			 	</c:when>
			 	<c:otherwise>
					<tr>
					  <td><c:out value="${comment.id}" /></td>
					  <td>
					  		<c:out value="${comment.content}" /></td>
					  <td><fmt:formatDate var="regDate" value="${comment.regDate}" 
					                      pattern="yyyy-MM-dd HH:mm:ss" />
					      <c:out value="${regDate}" />
					  </td>
					  <td>
					  	  <a href="${pageContext.request.contextPath}/free/commentDelete?commentNo=${comment.commentNo}&no=${comment.no}">삭제</a>	
					  		
					  </td>
					 </tr>
			 	</c:otherwise>
			 </c:choose>	
			 </c:forEach>
			 <c:if test="${empty commentList}">
			 <tr>
			    <td colspan='4'>댓글이 존재하지 않습니다.</td>
			 </tr>
		 	</c:if>
		 </table>
		</div>
		</form>
	</div>
	 </div>
	</div>
	<div class="footer">
<%-- 		<%@ %> --%>
	</div>
</div>
</div>
</div>
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

function start1() {
	window.open("/java86/MessageRList", "pop", "width=530, height=500");

};


	function MessageChk(){
		$.ajax({
			url:"${pageContext.request.contextPath}/MessageCheck",
			success : function(result){
				console.log(result);
				if(result == "1" ){
					var pop1 = document.querySelector("#pop1");
					pop1.style.top="255px";
					pop1.style.left="15px";
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