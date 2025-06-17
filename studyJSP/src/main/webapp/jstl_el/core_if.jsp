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
	<h1>core_if.jsp</h1>
	
	<c:set var="str" value="ITWILL" />
	
	str : ${str } <hr>
	<!--  만약에 str에 저장된 값이 ITWILL이라면 '부산교욱센터' 문자출력 -->
	
<%--		<c:if test="조건문"> --%>
<!-- 			조건문이 참일때 실행할 코드 -->
<%-- 	</c:if> --%>
	<c:if test="${str == 'ITWILL'}" >
		<h3>부산교육센터</h3>
	</c:if>
	
	<hr>
	<fieldset>
	<!-- 폼태그에 action속성값이 없는경우
			자기자신의 페이지를 호출함
	 -->
		<form action="" method="get">
			숫자1 : <input type="number" name="num1"><br>
			숫자2 : <input type="number" name="num2"><br>
			
			<input type="submit" value="전송">
		</form>
	</fieldset>
	
	<hr>
	<h2> 전달된 num1,num2 값의 크기를 비교 출력</h2>
	<!-- num1값이 더 클경우 "num1(000) 값이 더 크다" -->
	
	<%-- <c:if test="${영역.num1 > 영역.num2}" > --%>
	<c:if test="${param.num1 > param.num2}" >
		<h3>num1(${Integer.parseInt(param.num1) }) 값이 더 크다</h3>
	</c:if>
	
	<!-- num2값이 더 클경우 "num2(000) 값이 더 크다" -->
	<c:if test="${param.num1 < param.num2 }">
		<h3>num1(${Integer.parseInt(param.num2 }) 값이 더 크다</h3>
	</c:if>
	
	<hr>
	<h2> c:choose 문법(switch-case와 유사함) </h2>
	
	<c:choose>
		<c:when test="${param.num1 > param.num2 }">
			큰값 : ${param.num1 }<br>
		</c:when>
		<c:when test="${param.num1 < param.num2 }">
			큰값 : ${param.num2 }<br>
		</c:when>
		<!-- c:otherwise을 사용해서 else -->
		<c:otherwise>
			else/default의 개념을 사용(그외 나머지)
			<h3>두개의 값이 같음!</h3>
			
			
		</c:otherwise>
	</c:choose>
	
	
		
</body>
</html>