<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FIND ZIP</title>
<link rel="stylesheet" type="text/css" href="/myweb/css/mainLayout3.css">
<style>
.findzipMainText{
	text-align: center;
	clear: both;
	margin-top: 50px;
	font-size: 18px;
	border-width: 1px;
}
.findzipMainText span{
	font-size: 14px;
}		
findzip_list_row{
			display: inline;
}
.findzip_list_object_img img{
	width: 400px;
	height: auto;
}
.findzip_list_object_right{
	float: right;
}
hr{
	border-width: 1px;
}
h1{
	font-size: 25px;
}
</style>
	
</head>
<body>
	<%@include file="/header3.jsp" %>
	<section>
		<nav>
			<div class="findzipMainText">
				<h1>F&nbsp; I&nbsp; N&nbsp; D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Z&nbsp; I&nbsp; P</h1>
				<span>머무는 것 자체로 여행이 되는 공간</span>
			</div>
			<hr>
			<div>
				<form>
				<table class="findZip_main" action="#">
					<tr>
						<td class="">숙소명</td>
						<td><input type="text" name="zip_search"></td>
						<td class="">여행지</td>
						<td><input type="text" name="des_search"></td>
						<td class="">체크인</td>
						<td><input type="text"></td>
						<td class="">체크아웃</td>
						<td><input type="text"></td>						
					</tr>
					<tr>
						<td>
							<select name="" style=width:310px;height:30px;margin-left:4px>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
							</select>
						</td>
						<td>
							<select name="" style=width:310px;height:30px;margin-left:4px>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
							</select>
						</td>
						<td>
							<select name="" style=width:310px;height:30px;margin-left:4px>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
							</select>
						</td>
					</tr>
				
					<div>
						<ul>
							<li>
								<label>숙소명</label>
								<input type="text" name="zipname">
							</li>
							<li>
								<label>여행지</label>
								<input type="text" name="siname" value=" ex) 서울시">
							</li>
							<li>
								<label>체크 인</label>
								<select name="startdate">
									<option value="checkin">YYYY</option>
								</select>
									<select name="startdate">
									<option value="checkin">MM</option>
								</select>
								<select name="startdate">
									<option value="checkin">DD</option>
								</select>
							</li>										
							<li>
								<label>체크 아웃</label>
								<select name="startdate">
									<option value="checkin">YYYY</option>
								</select>
									<select name="startdate">
									<option value="checkin">MM</option>
								</select>
								<select name="startdate">
									<option value="checkin">DD</option>
								</select>
							</li>	
						</ul>
						<img src="/myweb/img/button_reset.jpg" alt="초기화버튼" style=width:25px;height:25px;>
						<br>
					</div>
					<div>
						<ul>
							<li>
								<select name="peoplenum">
									<option value="인원">1인</option>
									<option value="인원">2인</option>
									<option value="인원">3인</option>
									<option value="인원">4인</option>
									<option value="인원">5인</option>
									<option value="인원">6인</option>
									<option value="인원">7인</option>
									<option value="인원">8인</option>
								</select>
							</li>	
							<li>
								<select name="costscope">
									<option value="cost">0~80,000원</option>
									<option value="cost">80,000~120,000원</option>
									<option value="cost">120,000~160,000원</option>
									<option value="cost">160,000~200,000원</option>
								</select>	
							</li>
							<li>
								<select name="ziptype">
									<option value="type">아파트</option>
									<option value="type">빌라</option>
									<option value="type">주택</option>
									<option value="type">별장</option>
								</select>
							</li>
						</ul>
					</div>
					<div>
						<input type="submit" value="SEARCH">
					</div>
				</form>
			</div>
			<div>
				<ul>
					<li>최신순</li>
					<li>인기순</li>
					<li>높은가격순</li>
					<li>낮은가격순</li>
				</ul>
				<hr>
			</div>
		</nav>
	</section>	
	<section>
		<div class="findzip_list_row">
			<div class="findzip_list_object_left">
				<div class="findzip_list_object_subject">
					<h1>모노가든</h1>
					<label>디자인펜션</label>
				</div>
				<div class="findzip_list_object_contents">
					<p>제주 / 제주시</p>
					<p>기준 2명 / (최대 3명)</p>
					<p>&#92;200,000 ~ &#92;440,000</p>
					<label>예약하기</label>
				</div>
				<div class="findzip_list_object_img">
					<img alt="숙소사진" src="/myweb/img/test_findzip_img.jpg">
				</div>
			</div>
			<div class="findzip_list_object_right">
				<div class="findzip_list_object_subject">
					<h1>모노가든</h1>
					<label>디자인펜션</label>
				</div>
				<div class="findzip_list_object_contents">
					<p>제주 / 제주시</p>
					<p>기준 2명 / (최대 3명)</p>
					<p>&#92;200,000 ~ &#92;440,000</p>
					<label>예약하기</label>
				</div>
				<div class="findzip_list_object_img">
					<img alt="숙소사진" src="/myweb/img/test_findzip_img.jpg">
				</div>
			</div>
		</div>
	</section>	
	<%@include file="/footer3.jsp" %>
</body>
</html>