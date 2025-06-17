<%@page import="java.sql.ResultSet"%>
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
	<h1>loginPro.jsp</h1>
	
	<h2> 로그인 정보를 처리하는 페이지 (사용자는 안보임) </h2>
	
	<%
		// loginForm.jsp페이지에서 전달한 아이디, 비밀번호를 받기
		// 폼태그를 POST방식으로 전송=> 한글 인코딩 오류
		request.setCharacterEncoding("UTF-8");
		
		// 폼태그로 전달된 정보(id, pw)를 저장	
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		
		// System.out.println("id :" +id+",pass : "+pass);
	%>
	
	<h2> 로그인 여부를 체크(판단)</h2>
	
	<%
		// 디비에 접속해서 해당 아이디, 비밀번호가 유효한지 체크
		
		// 디비연결정보
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		final String DBID = "root";
		final String DBPW = "1234";
		
		// 1) 드라이버 로드
		Class.forName(DRIVER);
		System.out.println("드라이버 로드 성공!");
		
		// 2) 디비 연결
		Connection conn = DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println(" 디비 연결성공! ");
		
		// 3) SQL구문 & pstmt 객체
		// 사용자의 아이디, 비밀번호 정보를 조회
		// => id(PK), pass(NN) 제약조건으로 항상 같이 존재해야함
		String sql = "select pass from itwill_member where id = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		// 3-1) ??? 값 입력
		pstmt.setString(1, id);
		
		// 4) SQL구문 실행
		ResultSet rs = pstmt.executeQuery();
		
		// 5) 데이터 처리
		if(rs.next()){
			// 아이디에 해당하는 비밀번호가 있다 => 아이디 정보가 있음
			// => 회원이다
			System.out.println(" 회원! ");
			if(pass.equals(rs.getString("pass"))){			
				System.out.println(" 로그인 성공! ");
				
				// 로그인 성공의 의미로 아이디정보 저장(session영역)
				session.setAttribute("id", id);
				
				response.sendRedirect("main.jsp");
			}else
				System.out.println("비밀번호가 잘못되었습니다.");
				%>
					<script type="text/javascript">
						alert(" 로그인 실패! - 비밀번호 오류!!!");
						history.back(); // 페이지 뒤로가기
					</script>
				<%
		}else{
			// 아이디에 해당하는 비밀번호가 없다 = > 아이디정보가 없음
			// => 비회원이다
			System.out.println(" 아이디가 잘못되었습니다. ");
			%>
			<script type="text/javascript">
				alert(" 로그인 실패! - 아이디 오류!!!");
				history.back(); // 페이지 뒤로가기
			</script>
		<%
		}
	%>
	
	
	
	
</body>
</html>