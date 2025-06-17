<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>paramTest.jsp</h1>
	<form action="paramPro.jsp" method="post"> <!-- paramPro.jsp / post방식 -->
		아이디<input type="text" name="id"> <br>
		이름<input type="text" name="name"><hr>
		좋아하는 음식1 : <input type="text" name="food"><br>
		좋아하는 음식2 : <input type="text" name="food"><br>
		<hr>
		취미 : <input type="checkbox" name="hobbys" value="게임">게임
		<input type="checkbox" name="hobbys" value ="운동">운동
		<input type="checkbox" name="hobbys" value="등산">등산
		
		
		<hr>
		<input type="submit" value="정보 전달">
	</form>
	
	
</body>
</html>