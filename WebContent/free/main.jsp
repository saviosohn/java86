<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
 * {margin: 0 auto; border: 1px solid black;}
 html, body{position: absolute; width: 100%; height: 100%; top: 0px;}
#menubutton {position: relative; z-index: 99; top:0px; left: 0px;
			width: 50px; height: 50px; }
#logo {position: relative; z-index: 2; top:0px; left: 0px;}

.header{ position: relative; z-index: 1;}
.container{background: yellow; position: relative; z-index: 1;}
</style>
<body>
						
			<div class="container-fluid">
			
				<div class = "header"  >
					<%@ include file="/topInclude/topMenu.jsp" %>
			
				</div>
		
	
	
				<div class="content" >


	
				</div>
			
			</div>
<script>

</script>
</body>
</html>