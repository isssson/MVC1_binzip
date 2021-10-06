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
	<form name="hosting" method="post">
		<div>
			<label>아파트</label>
			<label><input type="radio" name="ziptype" value="apt">아파트</label>
		</div>
		<div>
			<label>빌라</label>
			<label><input type="radio" name="ziptype" value="villa">빌라</label>
		</div>
		<div>
			<label>주택</label>
			<label><input type="radio" name="ziptype" value="house">주택</label>
		</div>
		<div>
			<label>호텔</label>
			<label><input type="radio" name="ziptype" value="hotel">호텔</label>
		</div>
		<div>
			<label>별채</label>
			<label><input type="radio" name="ziptype" value="outhoues">별채</label>
		</div>
		<div>
			<input type="submit" value="다음으로" formaction="/binzip/hosting/addHosting.jsp">
			<input type="button" value="취소" onclick="javascript:location.href='/binzip/index.jsp';">
		</div>
	</form>	
</section>
<%@include file="/footer.jsp" %>
</body>
</html>