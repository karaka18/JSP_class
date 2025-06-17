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
	<%
	
		//한글 처리인코딩
		request.setCharacterEncoding("UTF-8");
	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
	%>
	
	아이디 : <%=id %> <br>
	아이디(EL) : ${id } <br>
	아이디(EL) : ${param.id} <br>
	이름 : <%=name %><br>
	이름(EL) : ${param.name} <br>
	<hr>
	<%
		//String food1 = request.getParameter("food");
		//String food2 = request.getParameter("food");
		String[] foods = request.getParameterValues("food"); 
	%>
	좋아하는 음식1 : <%=foods[0] %> <br>
	좋아하는 음식2 : <%=foods[1] %> <br>
	
	좋아하는 음식1 : ${paramValues.food[0]} <br>
	좋아하는 음식2 : ${paramValues.food[1]} <br>
	
	<%
		String[] hobbys = request.getParameterValues("hobbys"); 
		
		for(int i =0;i<hobbys.length;i++){
			%>
				취미 : <%=hobbys[i] %><br>
				<%-- 취미 : ${paramValues.hobbys[i]} <br> --%>
			<%
		}
	%>
	
	<h2> EL 표현식은 JSP 반복문으로 반복이 불가능! (JSTL반복문은 가능) </h2>
	
	취미 : ${paramValues.hobbys[0] }<br>
	취미 : ${paramValues.hobbys[1] }<br>
	취미 : ${paramValues.hobbys[2] }<br>
	

	
	
	
	
</body>
</html>