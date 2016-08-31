	<div> 
		<table width="500px" height="65px">
			<tr>
				<td width = "80%"><img src="${pageContext.request.contextPath}/images/memo_top.gif"/> </td>
				<td width = "20%"><img width="50px" align="right" onclick="close1();"  src="${pageContext.request.contextPath}/images/memo_close.gif"/></td>
			</tr>
		</table>
		<table width="500px" height="50px">
			<tr>
				<td width = "10%"><a href="${pageContext.request.contextPath}/MessageRList"><img src="${pageContext.request.contextPath}/images/memo_recv.gif"/></a></td>
				<td width = "90%"><a href="${pageContext.request.contextPath}/MessageSList"><img src="${pageContext.request.contextPath}/images/memo_send.gif"/></a></td>
				
			</tr>
		</table>
	</div>
	<script>
		function close1(){
		
			self.close();
		};
	
	</script>
