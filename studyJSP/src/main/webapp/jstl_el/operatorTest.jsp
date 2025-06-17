<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>operatorTest.jsp</h1>
	
	<h2>EL표현식을 사용한 연산</h2>
	<!-- operatorPro.jsp / post / 숫자정보 2개 입력후 전달 -->
	<form action="operatorPro.jsp" method="post">
		숫자1 : <input type="number" name="num1"><br> 
		숫자2 : <input type="number" name="num2"><br>
		아이디 : <input type="text" name="id"><br>
		
		<hr>
		<input type="submit" value="정보 전달">
	</form>
	
</body>
</html>