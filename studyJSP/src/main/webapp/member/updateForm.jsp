<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
	<h1>updateForm.jsp</h1>
	
	<h2> 아이티윌 회원정보 수정</h2>
	
	<%
		// 사용자 로그인여부 체크
		String id = (String)session.getAttribute("id");
	
		if(id == null){
			// 로그인 X
			response.sendRedirect("loginForm.jsp");
		}
		
		// 로그인 성공(아이디있음)
		
		// 디비에 가서 id에 해당하는 모든 정보를 조회
		
		// - 디비연결정보
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		final String DBID = "root";
		final String DBPW= "1234";
		
		// 1) 드라이버 로드
		Class.forName(DRIVER);
		System.out.println(" 드라이버 로드 성공! ");

		// 2) 디비 연결
		Connection conn = DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println(" 디비 연결 성공! ");

		// 3) SQL구문 & pstmt 객체
		// 특정 id에 해당하는 사용자의 모든정보 조회
		String sql = "select * from itwill_member where id=?";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		// 3-1 ??? 값 입력
		pstmt.setString(1, id);

		// 4) SQL 실행
		ResultSet rs = pstmt.executeQuery();

		// 5) 데이터 처리
		String rid = null;
		String rname = null;
		int rage = 0;
		String rgender = null;
		String remail = null;
		Timestamp rreg_date = null;

		if(rs.next()){
			// 화면에 가져온 정보 출력
			// 1)
			// out.println(rs.getString("id"));
			
			// 2)
			rid = rs.getString("id");
			rname = rs.getString("name");
			rage = rs.getInt("age");
			rgender = rs.getString("gender");
			remail = rs.getString("email");
			rreg_date = rs.getTimestamp("reg_date");
		}
		
	%>
	
	<fieldset>
		<legend>회원수정 페이지</legend>
		<form action="updatePro.jsp" method="post">
			아이디 : <input type="text" name="id" value="<%=rid%>" readonly> <br>
			비밀번호 : <input type="password" name="pass"
									 placeholder="비밀번호를 입력하세요!"> <br>
			이름 : <input type="text" name="name" value="<%=rname%>"> <br>
			나이 : <input type="number" name="age" value="<%=rage%>"> <br>
			성별 : <input type="radio" name="gender" value="남"
					<% if(rgender.equals("남")) { %>
							checked="checked"
					<% } %>
					> 남
					 <input type="radio" name="gender" value="여"
					<% if(rgender.equals("여")) { %>
							checked="checked"
					<% } %>
					 > 여 <br>
			이메일 : <input type="email" name="email" value="<%=remail%>"> <hr>
			
			<input type="submit" value="회원수정">
		</form>
	</fieldset>
	
	
	
	
</body>
</html>