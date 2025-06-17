<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>attributeTest.jsp</h1>
	<%
		// JSP 코드(스크립틀릿)
		int cnt = 1000;
		
		// page영역에 cnt-2000값을 저장
		pageContext.setAttribute("cnt", 2000);
	
	%>
	
	스크립틀릿 요소 cnt(변수) : <%=cnt %> <br>
	EL표현식 : ${cnt } <br>
	=> JSP변수정보를 출력X, 영역의 정보(속성-attribute)는 사용가능<br>
	EL표현식 : ${pageScope.cnt } <br>
	
	<h2> 서블릿 페이지와 연결 </h2>
	
	<h3> 실행주소 : http://localhost:8088/studyJSP/test1 </h3>
	
	cnt (EL-request) : ${cnt } <br>
	cnt (EL-request) : ${requestScope.cnt } <br>
	cnt (jsp-request) : <%=request.getAttribute("cnt") %> <br>
	
	<!-- 
		영역객체에 저장된 정보를 사용할때 ${속성명} or ${영역객체.속성명}
		
		만약에, 영역객체정보 없이(생략) 호출하는 경우 주의!!
		
		pageScope -> requestScope -> sessionScope -> applicationScope
		위 순서로 영역을 돌아가면서 해당 속성을 찾는다
		만약 동일한 이름의 속성이 다른 영역에 존재한다면
		먼저 만난 속성의 정보만 사용가능
		
		
	
	 -->
	
	
	
</body>
</html>