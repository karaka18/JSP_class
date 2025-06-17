<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>logout.jsp</h1>
	
	<h2> 로그아웃 페이지</h2>
	
	<%
		// 로그인(세션에 정보를 저장)
		//		-> 로그아웃 (세션에 정보가 없음)
		session.invalidate();
	%>
	<script type="text/javascript">
		// alert("로그아웃 성공! ");
		alert(" 회원님의 정보가 안전하게 로그아웃 되었습니다! ");
		location.href="main.jsp";
	</script>
	
</body>
</html>