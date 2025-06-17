<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- JSTL문법을 사용하기전 반드시 선언필수! -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_set1.jsp</h1>
	<%
		int num1 = 100; 
		int num2 = 200; 
		int sum = num1 + num2; 
	%>
	
	<%-- ${pageScope } --%>
	
	<h2>JSTL-set태그(변수 생성<->영역객체에 정보저장) </h2>
	<%-- <c:set var="변수명" value="변수값" scope="영역(기본값 page)"/> --%>
	<%-- <% pageContext.setAttribute("변수명", "변수값") %> --%>
	<c:set var="num3" value="100" />
	<c:set var="num4" value="200" />
	<%-- <c:set var="sum2" value="num3 + num4" /> --%>
	<c:set var="sum2" value="${num3 + num4}" />
	<%-- <c:out value="sum2" /> --%>
	jstl-out : <c:out value="${sum2}" /><hr>
	el : ${sum2} <hr>
	
	<h3>c:set으로 정의한 변수(영역데이터)는 el표현식으로 호출해서 사용가능</h3>
	
	<%-- ${pageScope } --%>
	
	<h2>c:set 사용해서 다른페이지로 정보 전달(request영역에 정보저장)</h2>
	<c:set var="name" value="휴대폰" scope="request" />
	<c:set var="price" value="10000" scope="request" />
	<c:set var="color" value="Black" scope="request" />
	
	<%-- ${name } --%>
	
	<!-- core_set2.jsp에 방금저장한 (name,price,color) 정보를 출력 -->
	<!-- 페이지 이동 (forward)-->
	<jsp:forward page="core_set2.jsp" />
	
	
	
	
	
</body>
</html>