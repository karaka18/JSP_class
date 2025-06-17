<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>deleteForm.jsp(MVC)</h1>
	
	<h2> 회원정보 삭제(탈퇴하기)</h2>
	
	<c:if test="${empty id }">
		<c:redirect url="./Main.me"/>
	</c:if>
	
	<fieldset>
		<legend>아이티윌 탈퇴하기</legend>
		<form action="./MemberDeletePro.me" method="post">
			비밀번호 : <input type="password" name="pass">
			<input type="submit" value="탈퇴하기">		
		</form>	
	</fieldset>
	
	
	
	
</body>
</html>