<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
</head>
<body>
<%@include file="/header.jsp" %>
<section>
	<div>
		<div><h3>어디로 떠날까요?</h3></div>
		<div><select name="시도">
		<option value="서울">서울</option>
		<option value="경기">경기</option>
		<option value="인천">인천</option>
		<option value="강원">강원</option>
		<option value="충남">충남</option>
		<option value="충북">충북</option>
		<option value="세종">세종</option>
		<option value="대전">대전</option>
		<option value="대구">대구</option>
		<option value="전북">전북</option>
		<option value="전남">전남</option>
		<option value="광주">광주</option>
		<option value="경북">경북</option>
		<option value="경남">경남</option>
		<option value="울산">울산</option>
		<option value="부산">부산</option>
		<option value="제주">제주</option></select></div>
		<div><select name="구">
		<option value="강천구">강천구</option>
		<option value="양천구">양천구</option>
		<option value="구로구">구로구</option>
		<option value="영등포구">영등포구</option>
		<option value="금천구">금천구</option>
		<option value="동작구">동작구</option>
		<option value="관악구">관악구</option>
		<option value="서초구">서초구</option>
		<option value="강남구">강남구</option>
		<option value="송파구">송파구</option>
		<option value="강동구">강동구</option>
		<option value="광진구">광진구</option>
		<option value="성동구">성동구</option></select>
		</div>
	</div>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>