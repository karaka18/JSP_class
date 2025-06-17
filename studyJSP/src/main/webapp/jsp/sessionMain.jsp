<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionMain.jsp</h1>
	
	<h2> 메인 페이지 </h2>
	
	<!--
		로그인된 사용자만 메인페이지 확인
		로그인 정보가 없을경우 로그인 페이지로 이동 
	-->
	
	<%
		// 세션정보 가져오기
		String id = (String)session.getAttribute("id");
		
		if(id == null){
			// 로그인정보가 없음
			System.out.println(" 로그인정보 없음! 로그인페이지로 이동! ");
			
			response.sendRedirect("sessionLoginForm.jsp");	
		}
	%>
	<h2><%=id %>님 환영합니다!</h2>
	
	<!-- 로그아웃 버튼 -->
	
	<input type="submit" value="로그아웃" onclick="location.href='sessionLogout.jsp';">
	
	
	
	
	
	
	
</body>
</html>