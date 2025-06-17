<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionSet.jsp</h1>
	
	<h2>서버 - 카페</h2>
	
	<%
		System.out.println(" 서버 : 커피 주문요청! ");
	
		System.out.println(" 서버 : 커피 만드는중! ");
		System.out.println(" 서버 : 사용자 적립수행! ");
		
		// session 영역에 정보를 저장
		session.setAttribute("point", "1잔");
		
		System.out.println(" 서버 : 커피 완료! 고객에게 전달!");		
	
	%>
	
	<script type="text/javascript">
		alert(" 요청처리완료! (커피완료&포인트적립 완료-세션정보 저장)");
		location.href="sessionTest.jsp";	
	</script>
	
	
		
	
	
	
	
	
</body>
</html>