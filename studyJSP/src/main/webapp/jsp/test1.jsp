<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>test1.jsp</h1>
	
	<h2>JSP = java + html(JavaScript,CSS) </h2>
	<!-- HTML 주석문 -->
	<script type="text/javascript">
		// JavaScript 주석문
	    /*
	       JavaScript 주석문2
	    */
	</script>
	
	<%	
		// JAVA코드 사용가능
		//	안녕하세요 (JAVA  주석)
		System.out.println(" 안녕하세요! ");
	
	%>
	<%-- JSP 주석문 --%>
	
	<h2> HTML,CSS,JS 주석은 개발자모드(F12)에서 확인 가능 </h2>
	<h2> Java, JSP 주석은 개발자모드(F12)에서 확인 불가능 </h2>
	
	
	<%
		// String 타입의 배열 4칸 생성
		String[] strArr = new String[4];
		//"java","jsp","html","javascript" 값을 저장
		strArr[0] = "java";
		strArr[1] = "jsp";
		strArr[2] = "html";
		strArr[3] = "javascript";
		// 배열의 모든요소 출력
		//System.out.println(strArr[0]);
		for(int i=0;i<strArr.length;i++){
			System.out.println(strArr[i]+" ");			
		}
		for(String s:strArr){
			System.out.println(s);
		}
		
		// JAVA -> JSP
		for(int i=0;i<strArr.length;i++){
			out.println(strArr[i]+" ");	//html페이지 화면에 출력	
		}
	%>
	
	<%	
		for(int i=0;i<strArr.length;i++){
	%>
		<!-- 작성되는 코드의 종류? -->
		<!-- <h3>Hello!</h3> -->
		<!-- strArr[i];	(HTML코드에서 Java(JSP)코드값을 사용X -->
		<h3><%=strArr[i] %></h3>
		
	<%
		}
	
	%>

	
	
</body>
</html>