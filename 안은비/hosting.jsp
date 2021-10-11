<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hosting</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout3.css">
<style>
h1{
	font-size: 40px;
	text-align: center;
	margin-top: 80px;
	clear: both;
}
h4{
	font-size: 15px;
	text-align: center;
	margin-bottom: 50px;
}
h5{
	font-size: 20px;
}
form{
	text-align: center;
}
.hosting_ziptype{
	display: inline-block;
	font-size: 30px;
	width: 120px;
	height: 45px;
	background-color: lightgray;
	text-align: center;
	padding: 10px;
	margin-bottom: 20px;
	
}
.sub_hosting{
	margin-top: 40px
}

</style>
</head>
<body>
<%@include file="/header3.jsp" %>
<section>
	<article>
		<div>
			<h1>HOSTING</h1>
			<h4>나의 ZIP 등록하기</h4>
		</div>
	</article>
	<article>
		<h5>호스팅 할 숙소의 유형은 무엇인가요?</h5>	
		<form name="hosting" method="post" action="addHosting.jsp">
			<div>
				<span class="hosting_ziptype">아파트</span><input type="radio" name="ziptype" value="apt" checked>
			</div>
			<div>
				<span class="hosting_ziptype">빌라</span><input type="radio" name="ziptype" value="villa">			
			</div>
			<div>
				<span class="hosting_ziptype">주택</span><input type="radio" name="ziptype" value="house">
			</div>
			<div>
				<span class="hosting_ziptype">호텔</span><input type="radio" name="ziptype" value="hotel">
			</div>
			<div>
				<span class="hosting_ziptype">별채</span><input type="radio" name="ziptype" value="outhoues">
			</div>
			<div class="sub_hosting">
				<input type="submit" value="다음으로" class="btjoin" style=margin-right:50px;>
				<input type="button" value="취소" class="btjoin" onclick="javascript:location.href='/binzip/index.jsp';">
			</div>
		</form>
	</article>	
</section>
<%@include file="/footer3.jsp" %>
</body>
</html>