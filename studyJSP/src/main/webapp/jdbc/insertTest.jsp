<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>insertTest.jsp</h1>
	<!-- 
		Create
		Read
		Update
		Delete
		=> 웹개발의 기본이자 전부
	 -->
	 <h2>jsp-mysql에 정보 입력(insert-Create)</h2>
	 
	 <h3>0) mysql 드라이버 설치(프로젝트당 1회)-생략</h3>
	 <%!
	 	final String DRIVER = "com.mysql.cj.jdbc.Driver";
	 	final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
	 	final String DBID = "root";
	 	final String DBPW = "1234";
	 %>
	 <h3>1) 드라이버 로드 </h3>
	 <%
	 	Class.forName(DRIVER);
	 	System.out.println(" 드라이버 로드 성공! ");
	 %>
	 <h3>2) 디비 연결(드라이버 매니저 사용)</h3>
	 <%
	 	Connection conn
	 		= DriverManager.getConnection(DBURL, DBID, DBPW);
	 	System.out.println(" 디비 연결 성공! ");
	 	System.out.println(" conn : " + conn);
	 %>
	 <h3>3) SQL구문 작성(insert) & stmt 객체</h3>
	 <%
		// SQL구문 작성
	 	// (member 테이블에 id,pw,name,reg_date정보를 저장하는 SQL 작성)
	 	// id="itwill", pw="1234",name="아이티윌",reg_date=2025-02-05
	 	String id = "itwill5";
	 	String pw = "12345";
	 	String name = "아이티윌 부산";
	 	Timestamp reg_date = new Timestamp(System.currentTimeMillis());
	 	// => 시스템의 시간정보를 가져오기
	 	
//	 	String sql = "insert into member (id, pw, name, reg_date) values ('itwill3', '1234', '아이티윌', '2025-02-05')";
//	 	String sql = "insert into member (id, pw, name, reg_date) values ('"+id+"', '"+pw+"', '"+name+"', '"+reg_date+"')";
		String sql = "insert into member (id, pw, name, reg_date) values (?,?,?,?)";	 
	 
	 	// stmt 객체 (SQL 실행하기위한 객체)
	 	// Statement stmt = conn.createStatement();
	 	// pstmt 객체
	 	PreparedStatement pstmt = conn.prepareStatement(sql);
	 	
	 	// 3-1 ??? 값 입력
	 	// pstmt.setXXXX(?위치, 값);
	 	//		입력하는 데이터에 따라서 메서드 변경 
	 	
	 	// ** 주의! setXXXX()의 개수와 ?개수는 동일해야함
	 	pstmt.setString(1, id);
	 	pstmt.setString(2, pw);
	 	pstmt.setString(3, name);
	 	pstmt.setTimestamp(4, reg_date);
	 	
	 %>
	 <h3>4) SQL구문 실행</h3>
	 <%
//		stmt.executeUpdate(sql);
	 	pstmt.executeUpdate();
	 	System.out.println(" 데이터 입력 성공! (insert성공!)");
	 %>
	 
	 
</body>
</html>