<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>myInfo.jsp(MVC)</h1>
	
	<h2>정보 조회(마이 페이지)</h2>
	
	<!-- MemeberInfoAction에서 전달된 정보를 출력 -->
	<%-- ${requestScope.dto } --%>
	${dto }
	
	<h3> 아이디 : ${dto.id }</h3>
	<h3> 비밀번호 : ${dto.pass }</h3>
	<h3> 이름 : ${dto.name }</h3>
	<h3> 나이 : ${dto.age }</h3>
	<h3> 성별 : ${dto.gender }</h3>
	<h3> 이메일 : ${dto.email }</h3>
	<h3> 회원가입일 : ${dto.reg_date }</h3>
	
	<h2><a href="./Main.me">메인페이지로 이동</a></h2>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>