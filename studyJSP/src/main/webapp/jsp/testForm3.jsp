<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>testForm3.jsp</h1>
	
	<fieldset>
		<form action="testPro3.jsp" method="get">
		  이름 : <input type="text" name="name"><br>
		  성별 : <input type="radio" name="gender" value="남"> 남
		         <input type="radio" name="gender" value="여"> 여<br>
		  취미 : <input type="checkbox" name="hobby" value="게임"> 게임  
		  		 <input type="checkbox" name="hobby" value="운동"> 운동
		  		 <input type="checkbox" name="hobby" value="요리"> 요리<br>     
		  
		  <hr>
		  <input type="submit" value="전송">
		  
		</form>	
	</fieldset>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>