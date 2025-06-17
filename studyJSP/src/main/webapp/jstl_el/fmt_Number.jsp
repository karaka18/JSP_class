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
	<h1>fmt_Number.jsp</h1>
	
	<h2>숫자 포멧팅</h2>
	
	html코드 : 100000000<br>
	JSP코드 : <%=10000000 %><br>
	EL코드 : ${100000000 }<br>
	JSTL-core코드 : <c:out value="100000000"/><br>
	
	<h3>3자리마다 ,로 자릿수 구분하기</h3>
	JSTL-fmt코드(생략) : <fmt:formatNumber value="100000000"/><br>
	JSTL-fmt코드(false) : <fmt:formatNumber value="100000000" groupingUsed="false"/><br>
	JSTL-fmt코드(true) : <fmt:formatNumber value="100000000" groupingUsed="true"/><br>
	
	<h3> 소수점 자리수 표현하기 </h3>
	문제 : 3.141589 => 소수점 2번째 자리 까지 표현하기 <br>
	<fmt:formatNumber value="3.141589" pattern="#.##"/><br>
	<fmt:formatNumber value="3.141589" pattern="#.###"/><br>
	<fmt:formatNumber value="3.141589" pattern="#.######"/><br>
	
	<hr>
	문제 : 10.5 => 10.50(소수점 2번째 자리까찌 표현) <br>
	<fmt:formatNumber value="10.5" pattern="#.##"/><br>
	<fmt:formatNumber value="10.5" pattern="#.00"/><br>
	<fmt:formatNumber value="10.5" pattern="#.11"/><br>
	<fmt:formatNumber value="10.5" pattern="#.01"/><br>
	<fmt:formatNumber value="10.5" pattern="#.001"/><br>
	
	<h3> 퍼센테이지 계산 </h3>
	문제 : 0.5를 퍼센트로 전환<br>
	<fmt:formatNumber value="0.5" type="percent" /><br>
	<fmt:formatNumber value="${5/17 }" type="percent" /><br>
	
	<hr>
	<fmt:formatNumber value="10000" type="currency" /><br>
	<fmt:formatNumber value="10000" type="currency"
								  currencySymbol="@@" /><br>
	
	






	
</body>

</html>