<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!-- JSTL문법을 사용하기전 반드시 선언필수! -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_out.jsp</h1>
	
	<h2>JSTL (JSP Standard Tag Library) :
			자주사용되는 기능을 모아놓은 커스텀태그</h2>
	
	<%-- <jsp : 액션태그> --%>
	<%-- <c : JSTL-core --%>
	
	<%
		out.println(" ITWILL ");
	%>
	<hr>
	<%="아이티윌부산" %>
	<hr>
	${"아이티윌 부산교육센터"}
	<hr>
	<c:out value="ITWILL Busan"></c:out>
	<hr>
	<!-- el표현식은 문자를 ''또는 "" 모두 표시가능 -->
	<c:out value="${'아이티윌!' }" />
	<hr>
	<c:out value="${100*200}" />
	<hr>
	<h2>객체의 값이 없을경우 null 출력, 표현식은 공백문자("")를 출력</h2>
	<c:out value="${member.name }" default="null값 대신해서 출력하는 값" />
	<hr>
	
	<itwill>태그는 아이티윌을 표현합니다!
	<hr>
	&alt;itwill>태그는 아이티윌을 표현합니다!
	<hr>
	
	
	
	
	
	
</body>
</html>