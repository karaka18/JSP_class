<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>testForm2.jsp</h1>
	<!-- 이름, 나이 각각 입력받아서
	     testPro2.jsp 페이지로 정보 전송
	     정보 출력 + (사용자가 미성년자/성인 판단 20살기준)
	 -->
	 
	 <fieldset>
	 	<form action="testPro2.jsp" method="post">
	 		이름 : <input type="text" name="name"> <br>
	 		나이 : <input type="text" name="age"> <br>
	 		
	 		<input type="submit" value="정보 전달">
	 	</form> 
	 </fieldset>
	
	
	
	
</body>
</html>