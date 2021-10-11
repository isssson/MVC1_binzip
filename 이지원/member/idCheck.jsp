
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="idcheck" action="idCheck_ok.jsp">
		<fieldset>
			<legend>아이디 중복검사</legend>
			<label>아이디</label>	
			<input type="text" name="userid" minlength="4" maxlength="16" placeholder="4~16자리">
			<input type="submit" value="중복검사">
		</fieldset>
	</form>
</body>
</html>