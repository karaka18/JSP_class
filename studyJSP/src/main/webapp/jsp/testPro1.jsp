<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>testPro1.jsp</h1>
	
	<h2>HTTP 상태 404 – 찾을 수 없음(파일 없을때 발생)</h2>
	<!-- 페이지정보(파일,위치)을 찾지 못하는 경우 에러발생 -->
	<h2>그냥 페이지 실행 (파일 있을때 발생)</h2>
	
	<h2>testForm1.jsp 에서 폼태그를 사용해서 정보를 전송</h2>
	
	<%
		//JSP코드 사용 - 전달된 정보(파라메터)를 받아서 출력
		
		// http요청정보를 사용해서 값을 처리
		
		//http://localhost:8088/studyJSP/jsp/testPro1.jsp?number=100
		//request.getParameter("가져오려는 파라메터명");
		// => String타입의 데이터를 리턴함
		String number = request.getParameter("number");	
		
		int num = Integer.parseInt(number);
		// => null값을 (String->int)변경이 불가능
		
	%>
	
	전달한 정보 : <%=request.getParameter("number") %><br>
	전달한 정보 : <%=number %><br>
	전달한 정보 : <%=num %><br>
	<!-- 전달된 데이터가 정수라는것을 증명해보기 -->
	<hr>
	전달한 정보(연산) : <%=num+1 %> (숫자+숫자)<br>
	전달한 정보(연산) : <%=number+1 %>(문자+숫자)<br>
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>