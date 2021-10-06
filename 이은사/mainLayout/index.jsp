<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Binzip</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">	
</head>	
<body>
<%@include file="/header.jsp" %>
<section>
	<div class="mainImg">
		<img src="/binzip/main_imgs/main_img.png" alt="메인이미지">
	</div>
	<div class="midText">
		<h5>나의 집, 우리의 집</h5>
		<img src="/binzip/main_imgs/banner_img.jpg" alt="베너이미지" id="bannerImg">
	</div>
	<div class="midText_proposeZip">
		<h5>여기는 어때요? BINZIP 에서 제안하는 특별한 집</h5>
	</div>
	<div class="zipOffer">
		<table>
			<tr>
				<td>
					<a href="#">
						<img src="/binzip/main_imgs/test_img_square.jpg" alt="추천집이미지"><br>
					</a>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
				<td>
					<a href="#">
						<img src="/binzip/main_imgs/test_img_square.jpg" alt="추천집이미지"><br>
					</a>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
				<td>
					<a href="#">
						<img src="/binzip/main_imgs/test_img_square.jpg" alt="추천집이미지"><br>
					</a>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>	
				</td>									
			</tr>
			<tr>
				<td>
					<a href="#">
						<img src="/binzip/main_imgs/test_img_square.jpg" alt="추천집이미지"><br>
					</a>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
				<td>
					<a href="#">
						<img src="/binzip/main_imgs/test_img_square.jpg" alt="추천집이미지"><br>
					</a>
					<a href="#">한줄 소개글</a><br>
					<a href="#">주소 / 집이름</a>
				</td>
				<td>
					<a href="#">
						<img src="/binzip/main_imgs/test_img_square.jpg" alt="추천집이미지"><br>
					</a>
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