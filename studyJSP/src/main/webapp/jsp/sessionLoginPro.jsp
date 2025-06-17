<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>sessionLoginPro.jsp</h1>
	
	<%
		// 폼태그를 POST방식으로 전송=> 한글 인코딩 오류
		request.setCharacterEncoding("UTF-8");
		
		// 폼태그로 전달된 정보(id, pw)를 저장	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 사용자 계정정보 => DB연동
		String DBID = "itwill";
		String DBPW = "1234";
		
		
	%>
	
	아이디 : <%=id %><br>
	비번 : <%=pw %><br>
	
	<%
		
		if(id.equals(DBID)){
		// 아이디 비교 - O
			if(pw.equals(DBPW)){
			// 비밀번호 비교 - O
				System.out.println("로그인 성공");
			
				// 사용자의 아이디정보를 세션에 저장(공유)
				session.setAttribute("id",id);
				
			
			
				// 로그인 성공시 sessionMain.jsp 페이지 이동
				response.sendRedirect("sessionMain.jsp");
			}
			else
			//				- X
				System.out.println("비밀번호 오류");
		}
		else
		//			- X
			System.out.println("아이디 오류");
		
	
	%>
	
	
</body>
</html>