<div id="t1" >
	<img id="t1img"  align="middle" width= "100%"  src="${pageContext.request.contextPath}/images/bg1.png">
	<div id="tt7">
		<a href="${pageContext.request.contextPath}/jsp/main.jsp">
		<img    src="${pageContext.request.contextPath}/images/logo.png" />
		</a>
	</div>
</div>
<div id="t2">
	<div id="tt1">
		<a href="${pageContext.request.contextPath}/FineList"><img    src="${pageContext.request.contextPath}/images/bulgum.png" onmouseover="this.src='${pageContext.request.contextPath}/images/bulgumhover.png'"onmouseout="this.src='${pageContext.request.contextPath}/images/bulgum.png'"border="0"/></a>
	</div>
	<div id="tt2">
		<a href="${pageContext.request.contextPath}/free/list">
		<img    src="${pageContext.request.contextPath}/images/code.png" onmouseover="this.src='${pageContext.request.contextPath}/images/codehover.png'"onmouseout="this.src='${pageContext.request.contextPath}/images/code.png'"border="0"/>
		</a>
	</div>
	<div id="tt3">
		<a href="${pageContext.request.contextPath}/free/list">
		<img    src="${pageContext.request.contextPath}/images/free.png" onmouseover="this.src='${pageContext.request.contextPath}/images/freehover.png'"onmouseout="this.src='${pageContext.request.contextPath}/images/free.png'"border="0"/>
		</a>
	</div>
<!-- 	<div id="tt4"> -->
<%-- 		<img    src="${pageContext.request.contextPath}/images/matzip.png" onmouseover="this.src='${pageContext.request.contextPath}/images/matziphover.png'"onmouseout="this.src='${pageContext.request.contextPath}/images/matzip.png'"border="0"/> --%>
		
<!-- 	</div> -->
	<div id="tt5">
		<img    src="${pageContext.request.contextPath}/images/project.png" onmouseover="this.src='${pageContext.request.contextPath}/images/projecthover.png'"onmouseout="this.src='${pageContext.request.contextPath}/images/project.png'"border="0"/>
		
	</div>
	<div id="tt6">
		<img    src="${pageContext.request.contextPath}/images/sangzon.png" onmouseover="this.src='${pageContext.request.contextPath}/images/sangzonhover.png'"onmouseout="this.src='${pageContext.request.contextPath}/images/sangzon.png'"border="0"/>
		
	</div>
	
	
<!-- 	<div id="ta1"> -->
<%-- 		<img  width="354px;" src="${pageContext.request.contextPath}/images/ston.png"> --%>
<!-- 	</div>	 -->
	<div id="ta3">
		<img  width="100px;"  src="${pageContext.request.contextPath}/images/letter.png" onmouseover="this.src='${pageContext.request.contextPath}/images/letterhover.png' "onmouseout="this.src='${pageContext.request.contextPath}/images/letter.png'" border="0"/>
		
	</div>	
	<div id="ta2">
		<img  width="100px;"  src="${pageContext.request.contextPath}/images/join.png" onmouseover="this.src='${pageContext.request.contextPath}/images/joinhover.png'"onmouseout="this.src='${pageContext.request.contextPath}/images/join.png'"border="0"/>
		
	</div>	
	<div id="ta4">
		<c:choose>
			<c:when test="${empty user}">
			
				<img  onclick="start()" width="100px;"  src="${pageContext.request.contextPath}/images/login.png" onmouseover="this.src='${pageContext.request.contextPath}/images/loginhover.png'"onmouseout="this.src='${pageContext.request.contextPath}/images/login.png'"border="0"/>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/login/logout"><img  width="100px;"  src="${pageContext.request.contextPath}/images/logout.png" onmouseover="this.src='${pageContext.request.contextPath}/images/logouthover.png'"onmouseout="this.src='${pageContext.request.contextPath}/images/logout.png'"border="0"/></a>
			</c:otherwise>
		</c:choose>
	</div>	
	
</div>
<div id="t3" >
	<img onclick="imgCh();" id="t3img1"src="${pageContext.request.contextPath}/images/button1.png">
</div>