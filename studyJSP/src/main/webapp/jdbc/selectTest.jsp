<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>selectTest.jsp</h1>
	
	<h2>jsp-mysql 정보 조회(select - Read)</h2>
	
	<h3>0) 드라이버 설치(생략) </h3>
	<%!// 멤버변수 선언
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

	<h3>2) 디비 연결 </h3>
	<%
		Connection conn
				= DriverManager.getConnection(DBURL, DBID, DBPW);
	
		System.out.println("디비 연결 성공! ");	
	%>
	<h3>3) SQL구문 생성(select) & pstmt객체</h3>
	<%
		String sql = "select * from member";
	
		// pstmt 객체
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		// ???값 입력 => ?가 있을때만 입력, 없으면 생략
	%>
	<h3>4) SQL 실행</h3>
	<%
		// pstmt.executeUpdate();
		// => insert,update,delete 구문사용(테이블에 변화가 있는구문)
		// => 리턴값 : int / SQL구문으로 실행된 row수 리턴
		// pstmt.executeQuery();
		// => select 구문사용(테이블에 변화가 없는구문)
		// => 리턴값 : ResultSet / select구문의 결과를 저장하는 객체
		
		ResultSet rs = pstmt.executeQuery();
		System.out.println(" 정보 조회(select) 실행 성공! ");
	%>
	<h3>5) 데이터 처리 (정보 출력! select만)</h3>
	<%-- rs=<%=rs %> --%>
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>회원가입일</td>
		</tr>
	</table><br><br>
	
	<%
		//=> rs의 데이터가 다음에 있는지 없는지를 boolean 타입으로 리턴
		while(rs.next()){
			//=> rs.next() == true => 데이터가 존재한다
			// 레코드셋의 데이터중 커서가 가리키는 한줄(row)만 활성화
			
			// 해당 데이터를 가져오기
			// rs.getXXXX();
			// => 가져오려는 데이터 타입에 따라 메서드 변경
			String id = rs.getString("id");
			// System.out.println(" 아이디 : "+ id);
			String pw = rs.getString("pw");
			String name = rs.getString("name");
			Timestamp reg_date = rs.getTimestamp("reg_date");
	%>
			<tr>
				<td><%=id %></td>
				<td><%=pw %></td>
				<td><%=name %></td>
				<td><%=reg_date %></td>
			</tr>	
	<% 	
			out.println(" 아이디 : "+id+", 비밀번호 : "+pw+", 이름 : "+name+", 날짜 : "+reg_date+"<hr>");
		}
	%>
	
	
	
</body>
</html>