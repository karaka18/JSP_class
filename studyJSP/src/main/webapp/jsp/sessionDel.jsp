<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionDel.jsp</h1>
	
	<h2>서버 - 카페</h2>
	
	<%
		System.out.println(" 서버 : 사용자의 커피요청(쿠폰) ");
	
		System.out.println(" 서버 : 커피 만드는 중... ");
		
		session.removeAttribute("point");
		
		System.out.println(" 서버 : 사용자포인트  정보를 제거! ");
		System.out.println(" 서버 : 커피 완료! ");
	
	%>
	<script type="text/javascript">
		alert(" 커피 생성완료! (포인트 소멸완료)");
		location.href = "sessionTest.jsp";
	</script>
	
	
	
</body>
</html>