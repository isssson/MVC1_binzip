<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
<link rel="stylesheet" type="text/css" href="css/btn.css">
</head>
<body>
<%@include file="/header.jsp" %>
<section>
	<div>
		<h3>FIND PASSWORD</h3>
		<h5>가입 당시 입력하셨던 정보를 입력해주세요</h5>
	</div>
	<div>
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" value="아이디"></td>
			</tr>
		</table>
		<input type="button" value="다음 단계" class="btjoin2">
	</div>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>