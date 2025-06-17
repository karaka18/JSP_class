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
	<h1>core_set2.jsp</h1>
	
	<h2>core_set1.jsp에서 전달된 정보</h2>
	
	name : ${requestScope.name }<br>
	price : ${requestScope.price }<br>
	color : ${requestScope.color }<br>
	color : ${color }<br>
	
	<hr>
	<h2> c:remove 태그는 영역객체의 속성을 제거 </h2>
	<c:remove var="color" scope="request"/>
	<%-- <c:remove var="color" /> --%>
	
	name : ${requestScope.name }<br>
	price : ${requestScope.price }<br>
	color(req) : ${requestScope.color }<br>
	color : ${color }<br>
	
	<hr>
	
	<h2>TestServlet3(서블릿)에서 전달된 정보 출력하기</h2>
	
	<c:set var="setPerson" value="${requestScope.person}" />
	
	이름 : ${requestScope.person.name } <br>
	이름 : ${setPerson.name } <br>
	
	<c:set var="setPhone" value="${requestScope.person.p }" /> 
	모델 : ${requestScope.person.p.model } <br>
	모델 : ${setPhone.model } <br>
	전화번호 : ${person.p.telNo } <br>
	전화번호 : ${setPhone.telNo } <br>
	
	

</body>
</html>