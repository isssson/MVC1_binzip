<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PHONE CHECK</title>
</head>
<body>
	<form name="phonecheck" action="phoneCheck_ok.jsp">
		<fieldset>
			<legend>전화번호 중복검사</legend>
			<label>전화번호</label>	
			<input type="text" name="userphone" minlength="10" maxlength="11" placeholder="'-'을 빼고 넣어주세요">
			<input type="submit" value="중복검사">
		</fieldset>
	</form>
</body>
</html>