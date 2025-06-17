<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
	1) JSP 지시어(Directive) p150~159
	: JSP페이지에 설정된 정보를 표시
	%@ [page / include / taglib] %
  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
// 	   class ITWILL{
// 		  int iv; 	인스턴스변수
// 		  static int cv;	클래스변수(스태틱/정적)
//			멤버변수 = 인스턴스변수 + 클래스변수
//           (전역변수)  
// 		  public void method(){
// 			  int lv;	지역변수	
// 		  }
// 	   }
	
	
	%>
	<h1>test2.jsp</h1>
	<h2>1) JSP 지시어(Directive)p150-159</h2>
	<h2>2) JSP 선언문(Declaration)p160-162</h2>
	<%!
		//JSP 선언문이 작성되는 공간
		// => 멤버변수 & 멤버메서드를 선언하는 곳
		// => JSP파일 어디에서든 해당 선언된 변수, 메서드 사용가능
		String str1 = "멤버변수 입니다!";
		
		public void method1(){
			System.out.println("method1() 실행");
		}
		
		public String method2(){
			return "method2() 실행";
		}
		
	%>
	str1 = <%=str1 %> <hr>
	<h2>3) JSP 스크립틀릿(Scriptlet)p162-170</h2>
	<%
		// => JSP코드(JAVA)가 작성되는곳 	
		// => 메서드 안에서 동작을 처리됨
		// => 변수를 선언하게되면 지역변수로 처리
		String str2 = "지역변수 입니다!";
	%>
	str2 = <%=str2 %><hr>
	<h2>4) JSP 표현식 (expression)p170-175 </h2>
	<!-- 자바코드(JSP)로 작성된 변수의 값을 화면에 출력할때 사용
		
		변수 / 식(연산) / 메서드 호출가능(but, 리턴의 결과가 있을때)
	
	 -->
	<%="값" %><hr>
	<%=100+200 %><hr>
	<!-- ctrl + shift + /  주석 -->
	<%-- <%=method1() %><hr> --%>
	<%=method2() %><hr>
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>