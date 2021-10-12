<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 나의 예약 현황(아이디 누르면 나오는 페이지/카카오오븐 36페이지)</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">
</head>
<body>
<%@include file="/header.jsp" %>
	<nav>
        <ul>
             <li><a href="#">개인정보</a></li>
             <li><a href="#">예약현황</a></li>
             <li><a href="#">지난 예약현황</a></li>
             <li><a href="#">취소 요청 내역</a></li>
             <li><a href="#">내가 올린 집</a></li>
             <li><a href="#">총 매출</a></li>
             <li><a href="#">나의 문의 내역</a></li>
             <li><a href="#">관심ZIP</a></li>
         </ul>
    </nav>
<section>
    <form action="">
    <div>
		<h2>MY RESERVATION</h2>
		<h5>예약 현황</h5><hr>
	</div>
	<table>
		<tr>
			<td>입금 여부</td>
			<td> o </td>
		</tr>
		<tr>
			<td>예약자명</td>
			<td>홍길동</td>
		</tr>
		<tr>
			<td>입금자명</td>
			<td>홍길동</td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td>010-1234-5678</td>
		</tr>
		<tr>
			<td>기간</td>
			<td>2021-10-01</td>
		</tr>
		<tr>
			<td>인원</td>
			<td>2명</td>
		</tr>
		<tr>
			<td>금액</td>
			<td>100,000원</td>
		</tr>
	</table>
	<input type="button" value="이전으로"><input type="submit" value="입금확인"><input type="submit" value="예약취소">
	</form>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>