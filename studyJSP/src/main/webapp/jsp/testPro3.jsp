<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>testPro3.jsp</h1>
	
	<%
	  // 한글처리 인코딩(POST일때만)
	  
	  String name = request.getParameter("name");
	  String gender = request.getParameter("gender");
	
	  //String hobby = request.getParameter("hobby");
	  // => 전달된 파라메터정보 1개를 저장
	  String[] hobby = request.getParameterValues("hobby");
	  // => 전달된 동일한 이름의 파라메터 정보들을 여러개로 저장 String[]
			  
	  int[] arr = new int[3];
	  // [0][1][2]
	  
	  String[] str = new String[3];
	  //["1"]["2"]["3"]
	  // [주소][주소][주소]
	  
	  
	  
	%>
	
	<h2> 이름 : <%=name %></h2>
	<h2> 성별 : <%=gender %></h2>
	<%-- <h2> 취미 : <%=hobby %></h2> --%>
	<%-- <h2> 취미 : <%=hobby[0] %></h2> --%>
	<%-- <h2> 취미 : <%=hobby[1] %></h2> --%>
	<%-- <h2> 취미 : <%=hobby[2] %></h2> --%>
	
	<%
		if(hobby != null){
			for(int i=0;i<hobby.length;i++){
	%>
			<h2> 취미 : <%=hobby[i]%></h2>
	<%	
			}
		}
	%>
	
	
	
	
	
	
	
	
	
	
</body>
</html>