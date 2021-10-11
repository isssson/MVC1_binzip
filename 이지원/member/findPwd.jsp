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
.tx02{
	padding: 5px;
	text-align: left;
	size: 30;	
}
.bt1{
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
	<form name="findpwd" action="findPwd_ok.jsp ">
		<h2>FIND PASSWORD</h2>
		<p>가입 당시 입력하셨던 정보를 입력해주세요</p>
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" placeholder="내용을 입력해주세요" class="tx02"></td>
				</tr>
				<tr>
					<td>비밀번호 찾기질문</td>
					<td>
						<select name="question" style=width:310px;height:30px;margin-left:4px>
							<option value="태어난 곳은 어디입니까?">태어난 곳은 어디입니까?</option>
							<option value="제일 좋아하는 색은 무엇입니까?">제일 좋아하는 색은 무엇입니까?</option>
							<option value="기억에 남는 별명은 무엇입니까?">기억에 남는 별명은 무엇입니까?</option>
							<option value="가장 좋아하는 음식은 무엇입니까?">가장 좋아하는 음식은 무엇입니까?</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>비밀번호 찾기 답변</td>
					<td><input type="text" name="answer" placeholder="내용을 입력해주세요" class="tx02"></td>
				</tr>
			</table><br>
		<input type="submit" value="비밀번호 수정하기" class="bt1">
	</form>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>