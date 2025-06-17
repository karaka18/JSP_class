<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>deleteForm.jsp</h1>
	
	<h2> 회원정보 삭제(탈퇴하기)</h2>
	
	<%
		// 사용자 로그인 여부 체크
		String id = (String) session.getAttribute("id");
	
		if (id == null) {
			response.sendRedirect("loginForm.jsp");
		}
	%>
	
	<fieldset>
		<legend>아이티윌 탈퇴하기</legend>
		<form action="deletePro.jsp" method="post">
			비밀번호 : <input type="password" name="pass">
			<input type="submit" value="탈퇴하기">
		</form>
	</fieldset>
</body>
</html>