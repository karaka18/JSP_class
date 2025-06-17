<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>main.jsp</h1>
	<!--  로그인을 한 사용자만 사용가능
			미로그인시 로그인 페이지로 이동 -->
	<%-- <%=session.getAttribute("id") %> --%>
	<%
		// 로그인 상태정보 확인(session)
		String id = (String)session.getAttribute("id");
	
		if(id == null){
			// 로그인 X
			System.out.println("로그인 정보 없음! 로그인 페이지로 이동!");
			response.sendRedirect("loginForm.jsp");
		}
//		else {
//			// 로그인 O
//			
//		}
	%>
	
	<h3><%=id %>님 안녕하세요!</h3>
	<!-- 로그아웃 버튼 -->
	<input type="button" value="로그아웃" onclick="location.href= 'logout.jsp';">
	<a href="logout.jsp">로그아웃(a태그)</a>
	<a href="javascript:location.href='logout.jsp';">로그아웃(a태그)</a>
	
	<hr><hr>
	
	<h3><a href="myInfo.jsp">정보 보기(마이페이지)</a></h3>
	
	<h3><a href="updateForm.jsp">정보 수정하기</a></h3>

	<h3><a href="deleteForm.jsp">정보 삭제하기(탈퇴하기)</a></h3>

	
	<%
		// *.jsp 페이지는 JSP코드를 첫번째로 실행한다(모든 JSP코드 실행)
		if(id != null){
			if(id.equals("admin")){
	%>
		<!-- 관리자(admin)일때만 사용가능한 링크 -->
		<h3><a href="list.jsp">회원정보 목록보기(관리자기능)</a></h3>
	<%
			}
		}
	%>	
	
	
	
		
	
	<h3>뭘봐</h3>
</body>
</html>