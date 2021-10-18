<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
</head>
<body>
<%@include file="/header.jsp" %>
<section>
	<article>
		<h2>HOSTING</h2>
		<h4>나의 ZIP 등록하기</h4>
		<h4>호스팅 할 숙소의 유형은 무엇인가요?</h4>
	</article>
	<form name="hosting" method="post" action="addHosting.jsp">
		<div>
			<label>아파트</label>
			<label><input type="radio" name="ziptype" value="apt" checked></label>
		</div>
		<div>
			<label>빌라</label>
			<label><input type="radio" name="ziptype" value="villa"></label>
		</div>
		<div>
			<label>주택</label>
			<label><input type="radio" name="ziptype" value="house"></label>
		</div>
		<div>
			<label>호텔</label>
			<label><input type="radio" name="ziptype" value="hotel"></label>
		</div>
		<div>
			<label>별채</label>
			<label><input type="radio" name="ziptype" value="outhoues"></label>
		</div>
		<div>
			<input type="submit" value="다음으로">
			<input type="button" value="취소" onclick="javascript:location.href='/binzip/index.jsp';">
		</div>
	</form>	
</section>
<%@include file="/footer.jsp" %>
</body>
</html>