<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>paramPro.jsp</h1>
	
	<h2> A : ${param.num1 }, B : ${param.num2 }</h2>
	
	<hr>
	
	<h3> A + B 연산의 결과를 출력</h3>
	
	A + B = ${param.num1} + ${param.num2}<hr>
	A + B = ${param.num1 + param.num2}<hr>
	=> EL표현식 안에서 연산을 수행해야함 (자동으로 형변환 수행)<hr>
	
	<h3> A, B값은 모두 양수인가? (T/F) </h3>
	
	${param.num1 > 0 && param.num2 > 0}<hr>
	
	<h3> A,B값이 동일한지를 체크, 동일한경우 "같음" 다른경우 "다름"</h3>

	A,B 값은 서로 ${param.num1 == param.num2 ? "같음" : "다름" }<hr>
	
	<h3> ID값을 입력받아와서 출력 사용자 정보가 있으면
			"안녕하세요 OOO님!", 정보가 없으면 "안녕하세요 손님!" 출력</h3>
		
		안녕하세요 ${param.id == null ? "손" : param.id}님! 
		안녕하세요 ${param.id == "" ? "손" : param.id}님! 
		안녕하세요 ${empty param.id ? "손" : param.id}님! 
			
		
</body>
</html>