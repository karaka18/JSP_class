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
	<h1>updateForm.jsp (MVC)</h1>
	
	<h2> 아이티윌 회원정보 수정 </h2>
	<!-- 비밀번호를 제외한 나머지 모든정보를
	     화면(입력창)에 출력  -->
	${requestScope.dto }<hr>
	
	
	     
	<fieldset>
		<legend> 회원수정 페이지 </legend>
		<form action="./MemberUpdatePro.me" method="post">
			아이디 : <input type="text" name="id" value="${dto.id }" readonly> <br>
			비밀번호 : <input type="password" name="pass" 
			                  placeholder="비밀번호를 입력하세요!" required> <br>
			이름 : <input type="text" name="name" value="${dto.name }"> <br>
			나이 : <input type="number" name="age" value="${dto.age }"> <br>
			성별 : <input type="radio" name="gender" value="남" 
					<c:if test="${dto.gender.equals('남')}">
						checked="checked"
					</c:if>
					> 남
				   <input type="radio" name="gender" value="여" 
				 	<c:if test="${dto.gender.equals('여')}">
						checked="checked"
					</c:if>	
				   > 여 <br>
			이메일 : <input type="email" name="email" value="${dto.email }" readonly> <hr>
			
			<input type="submit" value="회원수정">
					
		</form>	
	</fieldset>
	
	
	
	
	
</body>
</html>