<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>array.jsp</h1>
	
	<h2>TestServlet2에 저장된 menu정보를 받아와서 출력</h2>
	
	menu : ${requestScope.menu } <hr>
	menu : ${requestScope.menu[0] } <hr>
	menu : ${requestScope.menu[1] } <hr>
	menu : ${requestScope.menu[2] } <hr>
	menu : ${requestScope.menu[3] } <hr>
	menu : ${requestScope.menu[4] } <hr>
	menu : ${requestScope.menu[5] } <hr>
	
	
	sports : ${sessionScope.sports } <hr>
	sports : ${sessionScope.sports[0] } <hr>
	sports : ${sessionScope.sports[1] } <hr>
	sports : ${sessionScope.sports[2] } <hr>
	sports : ${sessionScope.sports[3] } <hr>
	sports : ${sessionScope.sports[4] } <hr>
	
</body>
</html>