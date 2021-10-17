<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<style>
h2{
	text-align: center;
	clear: both;
}
h3{
	text-align: center;
}
.input-box{
	float: right;
	margin-right: 20px
}
.hostTable{	
	float: center;
	margin: 0px auto;
	width: 400px;
	height: 400px;
}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
<section>
	<article>
		<h2>HOST LIST</h2>
		<h3>호스트 관리</h3>
	</article>
	<div class="input-box">
	<input type="text" placeholder="아이디 검색">
	</div>
	<table class="hostTable">		
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
</section>
<%@include file="../footer.jsp" %>
</body>
</html>