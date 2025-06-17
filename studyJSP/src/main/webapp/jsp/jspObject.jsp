<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jspObject.jsp</h1>
	
	<h2> JSP 내장객체(Implicit Object)</h2>
	
	<h3> 1) request 객체 : 사용자의 요청정보를 저장하는 객체 (거의 모든정보)</h3>
	
	서버도메인명 : <%=request.getServerName() %> <br>
	URL : <%=request.getRequestURL() %> <br>
	URI : <%=request.getRequestURI() %> <br>
	요청(전송)방식 : <%=request.getMethod() %> <br> 
	물리적 경로 : <%=request.getRealPath("/") %> <br>
	Http 해더정보 (user-agent) : <%=request.getHeader("user-agent") %><br>
	클라이언트 IP주소 : <%=request.getRemoteAddr() %>
	
	<h3> 2) response 객체 : 요청에 따른 응답정보 처리 객체 </h3>
	<%
	   //response.sendRedirect("main.jsp");
	   //response.addHeader("Refresh", "3; url = main.jsp");
	%>
	
	<h3> 3) session 객체 : 사용자의 상태정보를 유지(저장) </h3>
	
	sessionID값 : <%=session.getId() %> <br>
	세션 생성시간 : <%=session.getCreationTime() %> 
	세션 최종접속시간 : <%=session.getLastAccessedTime() %> <br>
	세션 유지시간(기본값(1800s)) : <%=session.getMaxInactiveInterval() %> <br>
	<!-- 기본 30분 유지, 아무런 사용이 없을경우 30분 이후 사라짐 -->
	<%
		session.setMaxInactiveInterval(60); // 60초-1분
	%>
	
	
	
	
	
	
</body>
</html>