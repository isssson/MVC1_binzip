<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
<style>
h3{
   font-size: 40px;
   text-align: center;
   clear: both;
}
h5{
   font-size: 20px;
   text-align: center;
}
table{
	margin:auto;
}
.tx01 {
	padding: 10px;
	text-align: left;
	font-size: 20px;
	font-weight: bold;
}
.tx02{
	padding: 5px;
	text-align: left;
	size: 30;	
}
.btIdsrc{
    background-color:#5E5E5E;
	border-radius:5px;
	border:1px solid #5E5E5E;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:18px;
	padding:10px 40px;
	text-decoration:none;
	display:block;
   	margin:0px auto;
}

</style>
</head>
<body>
<%@include file="/header.jsp" %>
	<section>
	<form name="findID" method="post">
		<div>
			<h3>FIND ID</h3>
			<h5>가입 당시 입력하셨던 정보를 입력해주세요</h5>
			<table class="findId">
				<tr>
					<td class="tx01" name="fkey">이름</td>
					<td class="tx02"><input type="text" value="이름" name="fvalue"></td>
				</tr>
				<tr>
					<td class="tx01" name="fkey">전화번호</td>
					<td class="tx02"><input type="text" value="전화번호" name="fvalue"></td>
				</tr>
			</table><br>
			<input type="submit" value="아이디 찾기" class="btIdsrc"><br>
		</div>
		</form>
	</section>
	<%@include file="/footer.jsp" %>
</body>
</html>