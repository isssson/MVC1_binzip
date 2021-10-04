<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Binzip</title>
<link rel="stylesheet" type="text/css" href="/binzip/binzip_css/mainLayout.css">	
</head>	
<body>
<%@include file="/header.jsp" %>
<section>
	<div class="mainImg">
		<img src="/binzip/test_mainLayout_imgs/main-top-img.png" alt="메인이미지">
	</div>
	<div>
		<h5>나의 집, 우리의 집</h5>
		<img src="/binzip/test_mainLayout_imgs/main-mid(banner)-img.jpg" alt="베너이미지" id="bannerImg">
	</div>
	<div>
		<h5>여기는 어때요? BINZIP 에서 제안하는 특별한 집</h5>
	</div>
	<div class="zipOffer">
		<table>
			<caption>추천게시물</caption>
			<tr>
				<td>
					<img src="/binzip/test_mainLayout_imgs/testimg.jfif" alt="추천집이미지"><br>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
				<td>
					<img src="/binzip/test_mainLayout_imgs/testimg.jfif" alt="추천집이미지"><br>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
				<td>
					<img src="/binzip/test_mainLayout_imgs/testimg.jfif" alt="추천집이미지"><br>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>	
				</td>									
			</tr>
			<tr>
				<td>
					<img src="/binzip/test_mainLayout_imgs/testimg.jfif" alt="추천집이미지"><br>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
				<td>
					<img src="/binzip/test_mainLayout_imgs/testimg.jfif" alt="추천집이미지"><br>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
				<td>
					<img src="/binzip/test_mainLayout_imgs/testimg.jfif" alt="추천집이미지"><br>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
			</tr>
		</table>
	</div>
</section>
<%@include file="footer.jsp" %>
</body>
</html>