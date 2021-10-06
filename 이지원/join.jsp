<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/btn.css">
<style>

table{
	width:650px;
	margin: 0px auto;
}
</style>
</head>
<script>
var y=now.getFullYear();
var m=now.getMonth()+1;
var d=now.getDate();


</script>
<body>
<%@include file="/header.jsp" %>
<section>
	<div>
		<h5>JOIN</h5>
		<h3>회원가입</h3>
		<hr>
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" value="영어,소문자 조합으로 8-16자  입력해주세요"></td>
				<td><input type="button" value="아이디찾기" class="btjoin2"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" value="특수문자(~!@#), 영어,숫자 조합으로 8-16자 입력해주세요"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="text" value="특수문자(~!@#), 영어,숫자 조합으로 8-16자 입력해주세요"></td>
			</tr>
			<tr>
				<td>질문</td>
				<td><select name="question">
				<option value="질문">좋아하는 색깔은?</option>
				<option value="질문">좋아하는 음식은?</option>
				<option value="질문">좋아하는 동물은?</option>
				<option value="질문">좋아하는 동네는?</option>
				</select></td>
			</tr>
			<tr>
		  		<td>질문 답변</td>
		  		<td><input type="text" value="질문답변"></td>	
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" value="이름"></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><select name="year">
					<script>
					for(var i=1960;i<=2021;i++){
					document.write('<option value="'+i+'"'+(i==y?'selected':' ')+'selected>'+i+'</option>');}
					</script>
  					</select>일
				<select name="month">
					<script>
					for(var i=1;i<=12;i++){
					document.write('<option value="'+i+'"'+(i==m?'selected':' ')+'selected>'+i+'</option>');}
					</script>
  					</select>월
				<select name="date">
					<script>
					for(var i=1;i<=31;i++){
					document.write('<option value="'+i+'"'+(i==d?'selected':' ')+'selected>'+i+'</option>');}
					</script>
  					</select>일
				</td>
			</tr>
			<tr>
				<td>핸드폰</td>
				<td><input type="text" value="핸드폰번호"></td>
				<td><input type="button" value="중복확인" class="btjoin"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" value="email"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" value="주소"></td>
				<td><input type="button" value="주소찾기" class="btjoin"></td>
			</tr>
		</table>
			<input type="button" value="회원가입" class="btjoin2">
	</div>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>