<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>fmt_Date.jsp</h1>
	
	<c:set var="today" value="<%=new Date() %>"/>
	
	today : ${today } <hr>
	
	<h2>날짜 & 시간정보 분리</h2>
	<fmt:formatDate value="${today }"/><hr>
	<fmt:formatDate value="${today }" type="time"/><hr>
	<fmt:formatDate value="${today }" type="date"/><hr>
	<fmt:formatDate value="${today }" type="both"/><hr>
	
	<h2>날짜 스타일변경</h2>
	<fmt:formatDate value="${today }" type="date"/><hr>
	<fmt:formatDate value="${today }" type="date"/><hr>
	<fmt:formatDate value="${today }" type="date"/><hr>
	<fmt:formatDate value="${today }" type="date"/><hr>
	
	<h2>시간 스타일변경 </h2>
	
	<fmt:formatDate value="${today }" type="time" timeStyle="full"/> <hr>
	<fmt:formatDate value="${today }" type="time" timeStyle="long"/> <hr>
	<fmt:formatDate value="${today }" type="time" timeStyle="medium"/> <hr>
	<fmt:formatDate value="${today }" type="time" timeStyle="short"/> <hr>
	
	<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="medium"/><hr>
	
	<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="medium"/><hr>
	
	<fmt:formatDate value="${today }" type="date" pattern="yyyy/MM/dd" /><hr>
	<fmt:formatDate value="${today }" type="date" pattern="yyyy-MM-dd" /><hr>
	<fmt:formatDate value="${today }" type="date" pattern="yyyy-MM-dd (E)" /><hr>
	<fmt:formatDate value="${today }" type="time" pattern="hh:mm:ss" /><hr>
	<fmt:formatDate value="${today }" type="time" pattern="(a) hh:mm:ss" /><hr>
	
	
	
	
	
	
	
	
	
</body>
</html>