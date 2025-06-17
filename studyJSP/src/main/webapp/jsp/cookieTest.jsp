<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookieTest.jsp</h1>
	
	<%
		// 쿠키정보를 가져오기
		Cookie[] cookies = request.getCookies();
	
		String value="";
		// 내가만든 쿠키를 배열에서 찾아서 가져오기
		if(cookies != null){
			for(int i=0; i<cookies.length;i++){	
				if(cookies[i].getName().equals("cupon")){
					value = cookies[i].getValue();
				}
			}
		}
	
		
	
	%>
	
	
	
	
	<h2> 클라이언트 (고객) </h2>
	
	<input type="botton" value="쿠키값 생성(커피주문)"
			  onclick="location.href='cookieSet.jsp';">
	
	<input type="botton" value="쿠키값 삭제"
			  onclick="location.href='cookieDel.jsp';">
	
	
	
</body>

</html>