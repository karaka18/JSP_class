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
				<h1>dbConnectTest.jsp</h1>
				
				<h2> 자바-Mysql 연결 테스트</h2>
				
				<h3>0) JDBC 드라이버 설치 </h3>
				<%
					System.out.println("/WEB-INF/lib/mysql-connector-j-8.0.33.jar 파일생성");
					System.out.println("드라이버 설치 완료! 프로젝트당 1번만 설치하면 끝");
				%>
				
				<h3>1) 설치된 드라이버를 로드</h3>
				<%
					//Class.forName("설치된 드라이버의 이름");
					Class.forName("com.mysql.cj.jdbc.Driver");
					System.out.println(" 드라이버 로드성공! ");
				%>
				
				<h3>2) 드라이버를 사용해서 디비연결(접속)</h3>
				<%
//					DriverManager.getConnection(접속주소, 접속아이디, 접속비밀번호)
//					jdbc:mysql://localhost:3306/jspdb
//					[프로토콜]://[ip주소]:[포트번호]
//					http://localhost:8088/studyJSP/jdbc/dbConnectTest.jsp
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");					
					
					System.out.println(" 디비 연결(접속) 성공! ");
					System.out.println(" con = " + con);
					
				
				%>
				
				
				
				
</body>
</html>