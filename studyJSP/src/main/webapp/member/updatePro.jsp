<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>updatePro.jsp</h1>
	
	<h2> 1) 전달된 정보(수정할 데이터) 저장 </h2>
	<%
		// 사용자 로그인 여부 체크
		String id = (String) session.getAttribute("id");
	
		if (id == null) {
			response.sendRedirect("loginForm.jsp");
		}
	
		// 한글처리 인코딩
		request.setCharacterEncoding("UTF-8");
	
		// pass,name,age,gender,(id,email 제외) 전달
	
		// + session id값 추가
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String gender = request.getParameter("gender");
	%>
	<h2> 2) 전달된 정보를 DB에 저장해서 수정 </h2>
	<%
		// - 디비연결정보
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
		

		// 3) SQL 작성 & pstmt 객체
		String sql = "select pass from itwill_member where id=?";		

		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);		

		// 4) SQL 실행
		ResultSet rs = pstmt.executeQuery();
		
		// 5) 데이터 처리 -> 회원정보를 수정
		if(rs.next()){
			// 회원정보가 있음
			if(pass.equals(rs.getString("pass"))){
				// 로그인 성공 -> 회원정보 수정
				
				// 3) SQL 작성(update)&pstmt 객체
				sql = "update itwill_member set name=?, age=?, gender=? where id=? ";
				pstmt = conn.prepareStatement(sql);
				
				// 3-1 ??? 값입력
				pstmt.setString(1, name);
				pstmt.setInt(2, age);
				pstmt.setString(3, gender);
				pstmt.setString(4, id);
				
				// 4) SQL 실행
				pstmt.executeUpdate();
				
				// 페이지 이동
				System.out.println("수정 완료! (메인페이지로 이동!!)");
				response.sendRedirect("main.jsp");

			}else{
			%>
				// 비밀번호가 오류
				<script type="text/javascript">
					alert("수정X - 비밀번호 오류");
					history.back();
				</script>
			<%	
			}
		}else{
			// 회원정보가 없음
			%>
				<script type="text/javascript">
					alert("수정X - 회원정보 없음");
					history.back();
				</script>
			<%
		}
		
	%>
	
</body>
</html>