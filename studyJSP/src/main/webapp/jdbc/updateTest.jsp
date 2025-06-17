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
	<h1>updateTest.jsp</h1>
	
	<h2>jsp-mysql 정보 수정(update)</h2>
	
	<!-- 디비연결 정보 가져오기 -->
	<%! // 멤버 변수 선언
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		final String DBID = "root";
		final String DBPW = "1234";
	%> 

	
	<h3>1) 드라이버 로드</h3>
	<%
		Class.forName(DRIVER);
		System.out.println(" 드라이버 로드 성공! ");
	%>
	
	<h3>2) 디비 연결</h3>
	
	<%
		Connection conn = DriverManager.getConnection(DBURL, DBID, DBPW)	;
		System.out.println(" 디비연결 성공! ");
	%>
	
	<h3>3) SQL구문 작성(update) & pstmt 객체</h3>
	<%
		// 사용자의 아이디, 비밀번호가 맞을때만 이름을 '부산'으로 수정
		String sql = "update member set name=? where id=? and pw=?";
	
		// pstmt 객체
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		// 3-1) ??? 값입력
		pstmt.setString(1, "부산");
		pstmt.setString(2, "itwill");
		pstmt.setString(3, "1234");
	%>
	
	<h3>4) SQL 실행</h3>
	<%
		pstmt.executeUpdate();
		System.out.println(" 회원정보(이름) 수정 완료! ");
	%>	
	
	
</body>
</html>