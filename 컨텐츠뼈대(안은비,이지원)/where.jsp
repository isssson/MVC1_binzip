<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
<style>
.btzipsrc{
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
    margin-top: 30px;
}
.table{
	float: left;
	margin: 0px auto;
}
</style>
</head>
<body>
<%@include file="/header.jsp" %>
<section>
	<table style="float:left; ">
		<tr>
		<td><h3>어디로 떠날까요?</h3></td>
		</tr>
		<tr>
		<td><select name="시도">
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
		<option value="제주">제주</option></select>시.도
		</td>
		</tr>
		<tr>
		<td><select name="구">
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
		<option value="성동구">성동구</option></select>구</td>
		</tr>
	</table>

	<table>
		<tr>
			<td><h3>언제 떠날까요?</h3></td>
		</tr>
		<tr>
			<td>체크인<select name="년">
			<option value="2021년">2021년</option>
			</select></td>
		</tr>
		<tr>
			<td>체크 아웃<select name="월">
		<option value="10월">10월</option></select></td>
		</tr>
		<tr>
			<td>2021년 10월 10일부터 <br>2021년 10월 11일까지 선택하셨습니다</td>
		</tr>
	</table>	
	<input type="button" value="SEARCH" class="btzipsrc">
</section>
<%@include file="/footer.jsp" %>
</body>
</html>