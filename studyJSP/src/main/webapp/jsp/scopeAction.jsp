<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>scopeAction.jsp</h1>
	
	<h2> 파라메터 정보를 출력</h2>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>
	
	아이디 : <%=id %> <br>
	아이디 : <%=request.getParameter("id") %><br>
	비번 : <%=pw %><br>
	
	<h2> 영역객체 정보를 출력 </h2>
	page 영역값 : <%=pageContext.getAttribute("page") %> <br>
	request 영역값 : <%=request.getAttribute("req") %> <br>
	session 영역값 : <%=session.getAttribute("ses") %> <br>
	application 영역값 : <%=application.getAttribute("app") %>
	
	
</body>
</html>