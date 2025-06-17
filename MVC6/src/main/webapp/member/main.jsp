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
	<h1>main.jsp(MVC)</h1>
	<!-- 로그인을 한 사용자만 사용가능
	     미로그인시 로그인 페이지로 이동 JSTL+EL -->
	
	<%-- <c:if test="$ {sessionScope.id == null }"> --%>
	<%-- <c:if test="${id == null }"> --%>
	<c:if test="${empty id }">
		<c:redirect url="./MemberLogin.me" />
	</c:if>     
	     
	<h3>${id }님 안녕하세요!</h3>
	<!-- 로그아웃 버튼 -->
	<input type="button" value="로그아웃"  
	       onclick=" location.href='./MemberLogout.me'; ">
	
	
	<a href="logout.jsp">로그아웃(a태그)</a>
	<a href="javascript:location.href='logout.jsp';">로그아웃(a태그)</a>
	
	
	<hr><hr>
	
	<h3><a href="./MemberInfo.me">정보 보기(마이페이지)</a></h3>
	
	
	<h3><a href="./MemberUpdate.me">정보 수정하기</a></h3>
	
	
	<h3><a href="./MemberDelete.me">정보 삭제하기(탈퇴하기)</a></h3>
	
	<c:if test="${!empty id && id.equals('admin') }">
		<!-- 로그인 + 관리자(admin)일때만 사용가능한 링크 -->
		<h3><a href="./MemberAdminList.me">회원정보 목록보기(관리자기능)</a></h3>
	</c:if>
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>