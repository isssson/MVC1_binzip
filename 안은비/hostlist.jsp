<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout3.css">
<style>
h2{
	text-align: center;
	clear: both;
}
h3{
	text-align: center;
}
.hostTable{	
	float: center;
	margin: 0px auto;
	width: 300px;
	height: 400px;
}
</style>
</head>
<body>
<%@include file="/header3.jsp" %>
<section>
	<article>
		<h2>HOST LIST</h2>
		<h3>호스트 관리</h3>
	</article>
	<div class="input-box">
	<input type="text" placeholder="아이디 검색">
	</div>
	<div class="hostTable">
		<table>
			<tr>
				<td>name</td>
				<td>ID</td>
				<td>Lock</td>
				<td>탈퇴</td>									
			</tr>
			<tr>
				<td>홍길동</td>
				<td><a href="#">hong</a></td>
				<td>잠그기</td>
				<td>탈퇴</td>
			</tr>
			<tr>
				<td>둘리</td>
				<td><a href="#">doll</a></td>
				<td>잠그기</td>
				<td>탈퇴</td>
			</tr>
			<tr>
				<td>깐따삐야</td>
				<td><a href="#">Bbi</a></td>
				<td>잠그기</td>
				<td>탈퇴</td>
			</tr>
			<tr>
				<td>또치</td>
				<td><a href="#">chichi</a></td>
				<td>잠그기</td>
				<td>탈퇴</td>
			</tr>
		</table>
	</div>
</section>
<%@include file="/footer3.jsp" %>
</body>
</html>