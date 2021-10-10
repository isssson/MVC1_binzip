<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 내가 올린 집(상세)</title>
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
    <article>
    		<h1>HOSTING MY ZIP</h1>
    		<h5>내가 올린 집</h5><hr>
		<div>
		<div class="">
		<img src="/binzip/mainLayout_imgs/testimg.jfif" alt="추천집이미지">
		</div>
		<div><input type="button" value="이미지 수정하기"></div>
		<div>
		<h4> 인원 및 금액: 20만원</h4>
		<h4> 예약 전 확인 사항</h4>
		<h4>기본 옵션:  화장실 싱크대 이불</h4>
		<h4>옵션: 비데</h4>
		<div><input type="button" value="내용 수정하기"></div>
		</div>
		<div>
		<select name="년">
		<option>2021년</option>
		</select>
		<select name="월">
		<option>10월</option>
		</select>
		<select name="일">
		<option>10일</option>
		</select>
		</div>
		<div>
	 	<input type="submit" value="예약하기">
	 	<input type="button" value="수정하기">
		</div>
	 </div>
    </article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>