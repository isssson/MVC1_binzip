<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 나의 예약 현황</title>
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
	<div>
		<h2>MY RESERVATION</h2>
		<h5>나의 예약 현황</h5><hr>
	</div>
	<div>
		<img src="/binzip/mainLayout_imgs/testimg.jfif" alt="추천집이미지">
	</div>
	<div>
		<h3> 모노가든</h3>
		<h4> 디자인 하우스 /  제주</h4>
		<h4>예약인원 :   2명</h4>
		<h3>가격</h3>
		</div>
		<div>
	 	<input type="button" value="내용수정"> &nbsp;&nbsp;&nbsp; <input type="button" value="영업종료">
		</div>
	<table>
		<tr>
			<td>예약날짜</td>
			<td>아이디</td>
			<td>입금상태</td>
			<td>예약취소</td>
		</tr>
		<tr>
			<td>2021-10-04-2021-10-06</td>
			<td>홍길동</td>
			<td><input type="button" value="입금확인"></td>
			<td><input type="button" value="예약취소"></td>
		</tr>

	</table>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>