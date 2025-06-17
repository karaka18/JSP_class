<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>list.jsp(MVC)</h1>
	
	<h2> 관리자 메뉴 - 회원 전체 목록 조회 </h2>
	
	<%-- $ {requestScope.memberList } --%>
	<%-- 	$ {memberList } --%>
	
	<table border="1">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>나이</td>
			<td>성별</td>
			<td>이메일</td>
			<td>회원가입일</td>
		</tr>
		
		<c:forEach var="dto" items="${memberList }">
			<tr>
				<td>${dto.id }</td>
				<td>${dto.pass }</td>
				<td>${dto.name }</td>
				<td>${dto.age }</td>
				<td>${dto.gender }</td>
				<td>${dto.email }</td>
				<td>${dto.reg_date }</td>
			</tr>
		</c:forEach>
		
	</table>
	
	<a href="./Main.me"> 메인페이지로 이동...</a>
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>