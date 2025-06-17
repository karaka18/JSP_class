<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="color.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="<%=col3%>">
	<h1>main.jsp</h1>
	<h2> 메인페이지 템플릿(일반적인 웹페이지 템플릿) </h2>
	
	<table border="1" width="600" height="600">
	  <tr>
	     <td colspan="2" height="100">
	        <h3>TOP - 로고 , 메뉴, 로그인 / 회원가입</h3>
	        <!-- <h2> 안녕하세요! 아이티윌 입니다! </h2> -->
	        <!-- top.jsp페이지 내용 불러오기(추가) -->
	        <!-- 액션태그 사용 -->
	        <jsp:include page="../inc/top.jsp"/>
	        
	     </td>
	  </tr>
	  <tr>
	     <td width="100">
	        <h3>LEFT(RIGHT) - 서브메뉴 </h3>
	        <jsp:include page="../inc/left.jsp"/>
	     </td>
	     <td>
	     	<h3>BODY(MAIN-Content) - 본문내용 </h3>
	     </td>
	  </tr>
	  <tr>
	     <td colspan="2" height="100">
	     	<h3>BOTTOM - 회사정보, 안내</h3>
	     	<jsp:include page="../inc/bottom.jsp"></jsp:include>
	     </td>
	  </tr>	
	</table>
	
	
	
	
	
</body>
</html>