<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>testPro2.jsp</h1>
	
	<!-- testForm2.jsp 페이지에서 전달된 이름, 나이 정보를 저장 -->
	<%
	    // get방식(주소줄)으로 정보를 전달시 데이터가 인코딩없이 전달(형태유지O)
	    // post방식(http-body)으로 정보를 전달시 데이터가 인코딩되어서 전달(형태유지X)
	    
	    // * 폼태그를 POST방식으로 전송시
	    // 반드시 한글처리 인코딩을 수행해야함(정보저장 전)
	    
	    // 한글처리 인코딩
	    // request 객체에 들어있는 정보를 인코딩 변환
	    request.setCharacterEncoding("UTF-8");
	
		//이름
		String name = request.getParameter("name");
	
		//나이
		//String age = request.getParameter("age");
		int age = Integer.parseInt(request.getParameter("age"));
	
	%>
	<h2>전달된 사용자 이름 : <%=name %></h2>
	<h2>전달된 사용자 나이 : <%=age %></h2>
	
	<h3> 추가적으로 사용자가 성인인지 미성년자인지 판단 </h3>
	<%
	    if(age >= 20){
	    	//성인
	    	out.print(" 성인입니다~! ");
	    	out.print("<h3> 성인입니다~! </h3>");
	    }else{
	    	//미성년자
	    	%>
			<!-- HTML -->
			<h3> 미성년자 입니다! </h3>		    	
	    	<%
	    }		
	%>
	
	<a href="testForm2.jsp">다시 실행하기</a>
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>