<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.PreparedStatement"%>
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
	<h1>insertPro.jsp</h1>
	
	<%
		// 폼태그를 POST방식으로 전송=> 한글 인코딩 오류
		request.setCharacterEncoding("UTF-8");
		
		// 폼태그로 전달된 정보(id, pw)를 저장	
		String id = request.getParameter("id");
		// System.out.println(id);
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
	%>
	
	<h2> mysql을 사용해서 전달받은 정보를 저장(insert) </h2>
	
	<%
		// 디비 연결정보
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		final String DBID = "root";
		final String DBPW = "1234";
		
		// 1) 드라이버 로드
		Class.forName(DRIVER);
		System.out.println(" 드라이버 로드 성공! ");

		// 2) 디비 연결
		Connection conn = DriverManager.getConnection(DBURL, DBID, DBPW)	;
		System.out.println(" 디비연결 성공! ");
		
		// 3) SQL 구문(insert) & pstmt 객체
		String sql = "insert into  itwill_member (id, pass, name, age, gender, email, reg_date) values(?,?,?,?,?,?,?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		// 3-1) ??? 값 입력
		pstmt.setString(1, id);
		pstmt.setString(2, pass);
		pstmt.setString(3, name);
		// pstmt.setInt(4, Integer.parseInt(request.getParameter("age")));
		// => 디비 테이블에 저장되는 형태로 정보를 저장해야함
		//(미리 데이터를 처리해야함)
		pstmt.setInt(4, age);
		pstmt.setString(5, gender);
		pstmt.setString(6, email);
		pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
		
		
		// 4) SQL 실행
		pstmt.executeUpdate();
		System.out.println("회원가입 성공!");
	%>
	
	<script type="text/javascript">
		alert(" 회원가입 성공!");
		location.href="loginForm.jsp";
	</script>
	
	
</body>
</html>