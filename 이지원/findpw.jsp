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
.btnext{
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
	<div>
		<h3>FIND PASSWORD</h3>
		<h5>가입 당시 입력하셨던 정보를 입력해주세요</h5>
	</div>
	<div>
		<table>
			<tr>
				<td class="tx01">아이디</td>
				<td class="tx02"><input type="text" value="아이디"></td>
			</tr>
		</table><br>
		<input type="button" value="다음 단계" class="btnext">
	</div><br>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>