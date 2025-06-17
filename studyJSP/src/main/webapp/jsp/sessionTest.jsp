<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionTest.jsp</h1>
	
	<h2>클라이언트-고객</h2>
	
	<%
		// 포인트정보는 session 영역에 저장되어있음
		// session 영역에 저장된 정보를 가져와서 출력
		
		// session 영역에 저장된 point정보를 가져오기
		String sessionPoint = (String)session.getAttribute("point");
	%>
	
	세션값(포인트) 확인 : <%=sessionPoint %> <hr>
	
	<input type="button" value="세션값 생성(저장)" 
	       onclick=" location.href='sessionSet.jsp'; ">
	       
	<input type="button" value="세션값 제거(삭제)" 
	       onclick=" location.href='sessionDel.jsp'; ">
	
	<input type="button" value="세션값 초기화" 
	       onclick=" location.href='sessionInv.jsp'; ">
	
	
</body>
</html>