<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>scopePro.jsp</h1>
	
	<%
		// 폼태그를 사용해서 전달(submit)된 정보를
		// 파라메터의 형태(String타입)로 전달됨
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>
	scopeForm.jsp 페이지에서 전달된 정보(파라메터) : <%=id %> <%=pw %> <hr>
	
	<h2> 영역객체(scope)에 정보 저장</h2>
	<%
		pageContext.setAttribute("page", "pageValue!");
		request.setAttribute("req", "requestValue!");
		session.setAttribute("ses", "sessionValue!");
		application.setAttribute("app", "applicationValue!");
	%>
	
	<h2> 영역객체 정보를 출력 </h2>
	page 영역값 : <%=pageContext.getAttribute("page") %> <br>
	request 영역값 : <%=request.getAttribute("req") %> <br>
	session 영역값 : <%=session.getAttribute("ses") %> <br>
	application 영역값 : <%=application.getAttribute("app") %>
	
	<h2> 페이지 이동시 정보 전달(공유) 체크 </h2>
	
	<h3> HTML - a태그</h3>
		<a href="scopeAction.jsp?id=<%=id%>&pw=<%=pw %>">scopeAction.jsp페이지로 이동</a>
		
	<h3> JavaScript - location객체 () </h3>
	<script type="text/javascript">
		alert("JavaScript - scopeAction.jsp 페이지로 이동")
		location.href="scopeAction.jsp?id=<%=id%>&pw=<%=pw%>";
	</script>
	
	<h3> JSP - sendredirect() ()</h3>
	<%
		// JSP페이지의 실행순서!
		// {HTML, JavaScript, JSP(java)}
		// => JSP(java)
		// => **JSP페이지에서 jsp이동동작, Javascript이동 동작은 같이 사용 X(둘중 하나만 사용)
		System.out.println(" JSP - scopeAction.jsp 페이지로 이동");
		// response.sendRedirect("scopeAction.jsp?id=" + id + "&pw=" +pw);
	%>
	
	<%-- <jsp:include page=""></jsp:include> --%>
	<!--  액션태그? jsp:~ 시작하는 태그
			태그만으로는 할수 없는 동작(java코드 실행
	 -->
	
	<h3> JSP액션태그 - forward (request, session, application 전달(공유)가능)</h3>
	<h3> forward 방식 이동 특징</h3>
	<h3> 1)</h3>
	<h3> 2)</h3>
	<%-- <jsp:include page=이동할 페이지/>--%>
	<jsp:forward page="scopeAction.jsp"?id=<%=id %>&pw=<%=pw %>/>
	
	
	
</body>
</html>