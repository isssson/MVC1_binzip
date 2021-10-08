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
		<h5>가입 당시 입력하셨던 정보를 입력해주세요.</h5>
	</div>
	<div>
		<table>
			<tr>
				<td>비밀번호 찾기 질문</td>
				<td><select name="question">
				<option value="질문">좋아하는 색깔은?</option>
				<option value="질문">좋아하는 음식은?</option>
				<option value="질문">좋아하는 동물은?</option>
				<option value="질문">좋아하는 동네는?</option>
				</select>
			</tr>
			<tr>
		  		<td>질문 답변</td>
		  		<td><input type="text" value="질문답변"></td>	
			</tr>
		</table>
		<input type="button" value="다음 단계" class="btjoin2">
	</div>
</section>
<%@include file="/footer.jsp" %>

</body>
</html>