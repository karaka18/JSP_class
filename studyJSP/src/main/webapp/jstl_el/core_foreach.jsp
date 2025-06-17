<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_foreach.jsp</h1>
	
	<%
		for(int begin = 0;begin<10;begin++){
	%>
		안녕하세요 <%=begin %> <br>
	<%
		}	
	%>			
	
	<h2> JSTL-foreach 사용</h2>
	<c:forEach var="i" begin="0" end="10" step="1">
		안녕하세요(JSTL)${i }<br>
	</c:forEach>
	
	<%
		String[] sports = {"축구","야구","배구","농구","탁구"};
		request.setAttribute("sports", sports);
	%>
	
	${sports[0] }
	
	<h2> 배열/리스트와 JSTL-foreach를 사용한 처리</h2>
	<c:forEach var="배열/리스트에서 하나 꺼낸 데이터 값을 저장"
					 items="배열or리스트 이름">
		배열/리스트의 길이만큼 반복진행
	</c:forEach>
	
	<c:forEach var="s" items="${requestScope.sports}">
		${s }<br>
	</c:forEach>
	for(String s :sports){
		print(s);
	}
	
	
	
	
	
	
	
</body>
</html>