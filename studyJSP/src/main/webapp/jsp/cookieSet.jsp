<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookieSet.jsp</h1>
	
	<h2> 서버 (카페) </h2>

	<%
		System.out.println(" 사용자의 요청 처리중... (커피 만드는중)");
		
		// 커피 쿠폰 발급 => 상태를 저장(쿠키)
		
		// 쿠키 객체 생성
		Cookie cookie =  new Cookie("cupon", "1");
		System.out.println(" 쿠폰에 도장하나 찍음! ");
		
		// 쿠키의 유효기간 설정
		cookie.setMaxAge(600);		// 10분(600초)
		System.out.println(" 쿠폰에 유효기간 작성! ");
		
		System.out.println(" 커피(요청)와 쿠폰(쿠키)를 전달!");
		
		// 정보 전달
		response.addCookie(cookie);
	%>
	
	<script type="text/javascript">
		alert(" 요청 처리완료! 쿠키생성완료");
	</script>
	
	
	
	
	
	
</body>
</html>