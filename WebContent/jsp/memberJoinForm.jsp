<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MemberJoin</title>
<script>
	function chkForm() {
		var rf = document.rForm;
		
		if (rf.memId.value == "") {
			alert("아이디를 입력하세요");
			rf.memId.focus();
			return false;
		}
		if (rf.password.value == "") {
			alert("비밀번호를 입력하세요");
			rf.password.focus();
			return false;
		}
		if (rf.passwordConfirm.value == "") {
			alert("비밀번호 확인을 입력하세요");
			rf.passwordConfirm.focus();
			return false;
		}
		if (rf.password.value != rf.passwordConfirm.value) {
			alert("비밀번호가 일치하지 않습니다");
			rf.password.focus();
			rf.password.select();
			return false;
		}
		if (rf.memName.value == "") {
			alert("이름을 입력하세요");
			rf.memName.focus();
			return false;
		}
		if (rf.emailId.value == "") {
			alert("이메일 계정을 입력하세요");
			rf.emailId.focus();
			return false;
		}
		if (rf.emailDomain.value == "") {
			alert("이메일 도메인을 선택하세요");
			rf.emailId.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<form name="rForm" method="POST" encType="multipart/form-data" action="${pageContext.request.contextPath}/memberJoin" onsubmit="return chkForm();">
		<table>
			<tr><td></td><td></td></tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="memId" size="20" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password" size="20" /></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" name="passwordConfirm" size="20" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="memName" size="20" /></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="emailId" size="20" />@
					<select name="emailDomain">
						<c:forEach var="data" items="${mailDomainList}">
							<option value="${data.codeValue}">${data.codeName}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="telNum" size="20" /></td>
			</tr>
			<tr>
				<td>사진</td>
				<td><input type="file" name="picture" size="20" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit">등록</button>
					<button type="reset">재작성</button>
					<input type="button" value="취소" onclick="location.href='${pageContext.request.contextPath}/index.jsp'" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>