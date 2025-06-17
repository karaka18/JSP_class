<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Object.jsp</h1>
	
	<h2>TestSerlvet3 실행시 연결된 페이지</h2>
	
	<h2>request 영역에서 전달된 데이터를 출력</h2>
	
	${requsetScope}<hr>
	${requestScope.person } <hr>
	
	<!-- EL표현식은 변수의 직접접근이 가능
			(직접 호출시 자동으로 get/set메서드 호출
	 -->
	
	이름 : ${requestScope.person.name }<br>
	모델명 : ${requestScope.person.p.model }<br>
	전화번호 : ${requestScope.person.p.telNo }<br>
	전화번호 : ${person.p.telNo }<br>
</body>
</html>