<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>list.jsp</h1>
	
	<h2> 관리자 메뉴 - 회원 전체 목록 조회 </h2>
	<%
		// 사용자 로그인 여부 체크
		// (+ 관리자(admin)만 가능)
		String id = (String)session.getAttribute("id");
		
		if(id == null || !id.equals("admin")){
			response.sendRedirect("main.jsp");
		}
	
		// DB에 저장된 회원목록을 가져오기
		
		// 디비 연결정보 
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		final String DBID = "root";
		final String DBPW = "1234";
		// 1) 드라이버 로드
		Class.forName(DRIVER);
		System.out.println(" 드라이버 로드 성공! ");
		// 2) 디비 연결
		Connection conn = DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println(" 디비 연결 성공! ");
		// 3) SQL 구문(select) & pstmt 객체
//		String sql = "select * from itwill_member";
		String sql = "select * from itwill_member where id!=?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		
		// 4) SQL 실행
		ResultSet rs = pstmt.executeQuery();
	%>
	
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>나이</td>
			<td>성별</td>
			<td>이메일</td>
			<td>회원가입일</td>
		</tr>
	<%	
		// 5) 데이터 처리 (table 출력)
		while(rs.next()){
			// rs를 꺼내서 table에 출력
			id = rs.getString("id");
			
			if(id.equals("admin")) continue;
			
			String pass = rs.getString("pass");
			String name = rs.getString("name");
			int age = rs.getInt("age");
			String gender = rs.getString("gender");
			String email = rs.getString("email");
			Timestamp reg_date = rs.getTimestamp("reg_date");
			
		%>
			<tr>
				<td><%=id %></td>
				<td><%=pass %></td>
				<td><%=name %></td>
				<td><%=age %></td>
				<td><%=gender %></td>
				<td><%=email %></td>
				<td><%=reg_date %></td>
			</tr>
		<%		
			
		}//while
	%>
	</table>
	
	<a href="main.jsp"> 메인페이지로 이동...</a>

</body>
</html>