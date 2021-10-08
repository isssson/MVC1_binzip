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
		<h3>EDIT PASSWORD</h3>
		<h5>비밀번호 수정하기</h5>
	</div>
	<div>
		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" value="특수문자(~!@#), 영어,숫자 조합으로 8-16자 입력해주세요" ></td>
			</tr>
			<tr>
				<td>비밀번호 확인하기</td>
				<td><input type="text" value="특수문자(~!@#), 영어,숫자 조합으로 8-16자 입력해주세요" ></td>
			</tr>
		</table>
		<input type="button" value="로그인하러 가기" class="btjoin2">
	</div>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>