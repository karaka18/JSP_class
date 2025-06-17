<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check(){
		if(document.fr.number.value == ""){
			alert(" 숫자를 입력하세요! ");
			document.fr.number.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<h1>testForm1.jsp</h1>
	
	<fieldset>
		<form action="testPro1.jsp" method="get" name="fr"  onsubmit=" return check(); ">
			<!-- <input type="text"> -->
			좋아하는 숫자 : <input type="number" name="number">
			<input type="submit" value=" 정보 전송 ">		
		</form>	
	</fieldset>
	
	
</body>
</html>