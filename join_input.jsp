<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout2.css">
<style>
h1{
	font-size: 30px;
	text-align: center;
}
h3{
	font-size: 25px;
	text-align: center;
}
table{
	width: 550px;
	margin: 0px auto;
}
</style>
</head>
<body>
<%@include file="header2.jsp" %>
<section>
<h1>J O I N</h1>
<h3>회 원 가 입</h3>
<table>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="userid" size="30" maxlength="16"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="userpwd" size="30" maxlength="16"></td>
	</tr>
	<tr>
		<td>비밀번호 확인</td>
		<td><input type="password" name="userpwd" size="30" maxlength="16"></td>
	</tr>
	<tr>
		<td>질문</td>
		<td><select name="question">
			<option value="고향">태어난 곳은 어디입니까?</option>
			<option value="색깔">제일 좋아하는 색은 무엇입니까?</option>
			<option value="별명">기억에 남는 별명은 무엇입니까?</option>
			<option value="음식">가장 좋아하는 음식은 무엇입니까?</option>
			</select></td>
	</tr>
	<tr>
		<td>질문 답변</td>
		<td><input type="text" name="answer" size="30"></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" size="30"></td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td></td>
	</tr>
	<tr>
		<td>핸드폰</td>
		<td><input type="text" name="tel" size="30"></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email" size="30"></td>
	</tr>
	<tr>
		<td>주소</td>
		<td><input type="text" name="addr" size="30"></td>
	</tr>
</table>
</section>
</body>
</html>