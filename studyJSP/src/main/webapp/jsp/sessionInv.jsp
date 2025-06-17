<%@page import="org.eclipse.jdt.internal.compiler.lookup.TypeSystem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionInv.jsp</h1>
	
	<h2> 서버 - 카페</h2>
	
	<%
		System.out.println(" 서버 : 사용자 정보삭제 요청! ");
	
		System.out.println(" 서버 : 사용자 정보 초기화! ");
		// session.removeAttribute(name);
		// => 세션에 특정 속성만 제거
				
		session.invalidate();
		// => 세션에 정보를 초기화
		
	%>
	<script type="text/javascript">
		alert(" 사용자 정보 초기화 완료! ");
		location.href = "sessionTest.jsp";
	</script>
	
	
	
	
</body>
</html>