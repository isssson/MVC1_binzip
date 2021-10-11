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
   font-size: 40px;
   text-align: center;
   clear: both;
}
p{
   font-size: 20px;
   text-align: center;
}
table{
	margin:auto;
}
.bt01{
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
<%@include file="../header.jsp" %>
<section>
	<form name="findid" action="findId_ok.jsp">
		<h2>FIND ID</h2>
		<p>가입 당시 입력하셨던 정보를 입력해주세요</p>
			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" placeholder="내용을 입력해주세요"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="phone" placeholder="내용을 입력해주세요"></td>
				</tr>
			</table><br>
		<input type="submit" value="아이디 찾기" class="bt01">
	</form>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>