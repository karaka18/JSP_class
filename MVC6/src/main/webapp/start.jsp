<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>start.jsp</h1>
	
	<h2>MVC사용 개발시에는 절대로 jsp파일을 실행X
	    <br>
	    단, start.jsp는 예외
	</h2>
	<h2>MVC 프로젝트에서 실행가능한 유일한 JSP파일</h2>
	
	<%
		System.out.println(" V : 페이지 시작! ");
		//response.sendRedirect("./MemberJoin.me");
		response.sendRedirect("./MemberLogin.me");
	%>
	
	
	
	
	
	
</body>
</html>