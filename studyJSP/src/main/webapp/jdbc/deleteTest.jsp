<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>deleteTest.jsp</h1>
	
	<h2>JSP-mysql 정보 삭제(delete)</h2>
	
	<!-- 아이디 : "itwill", 비밀번호 : "1234"인 회원정보를 삭제 -->

	<%! // 멤버 변수 선언
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		final String DBID = "root";
		final String DBPW = "1234";
	%> 
	
	<%
		Class.forName(DRIVER);
		System.out.println(" 드라이버 로드 성공! ");
	%>
	
	<%
		Connection conn = DriverManager.getConnection(DBURL, DBID, DBPW)	;
		System.out.println(" 디비연결 성공! ");
	%>
	
	<%
		String sql = "delete from member where id=? and pw=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, "itwill");
		pstmt.setString(2, "1234");
	%>
	
	<%	
		pstmt.executeUpdate();
		System.out.println(" 회원정보(이름) 수정 완료! ");
	%>
	
</body>
</html>