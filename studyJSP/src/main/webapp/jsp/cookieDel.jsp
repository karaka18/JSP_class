<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookieDel.jsp</h1>
	
	<h2> 서버 </h2>
	
	<%
		// 쿠키정보를 삭제
		
		// 기존의 쿠키정보를 가져오기
		Cookie[] cookies = request.getCookies();
	
		// 사용자의 쿠키중에서 해당 쿠키정보만 가져오기
		// => 'cupon' 이름의 쿠키가 있는 확인
		
		if(cookies != null){
			for(int i=0;i<cookies.length;i++){
				if(cookies[i].getName().equals("cupon")){
					// => 내가만든 쿠키가 있음	
					// => 쿠키를 제거(삭제)
					cookies[i].setMaxAge(0);
					// => 쿠키의 유효기간을 제거 => 사용불가능
					response.addCookie(cookies[i]);
					// => 기존의 쿠키정보를 제거하고 다시 돌려줌
				}				
			}			
		}

	
		
	%>
	
	<script type="text/javascript">
		alert(" 쿠키정보 삭제 완료! ");
		location.href="cookieTest.jsp";
	</script>
	
	
	
</body>
</html>