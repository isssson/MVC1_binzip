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
	font-size: 22px;
	border-width: 1px;
}
.findzipMainText span{
	font-size: 14px;
}		
div.findzip_list_row{	
	width: 500px;
}
.findzip_list_object_img{
	width: 200px;
}
.findzip_list_object_img img{
	width: 200px;
	height: auto;
}
.findzip_list_object_right{
	float: right;
}
.findzip_list_object_contents{
	width: 200px;	
}
.search ul{
	list-style-type: none;		
}
.search li{
	float: left;
	margin-left: 40px;	
}
.condition ul{
	list-style-type: none;		
}
.condition li{
	float: left;
	margin-left: 40px;
}
.btn_search{
	clear: both;
	text-align: center;	
}
.priority li{
	float: left;
	margin-left: 40px;
}
.priority{
	float: right;
	margin-bottom: 10px;
	font-size: 10px;
}
.search li{
	float: left;
	margin-left: 40px;	
}
.myButton{
	margin-top: 40px;
	margin-bottom: 50px;
	text-align: center;
}
hr{
	border-width: 2px;
	margin-top: 30px;
	margin-bottom: 35px;
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
				<form name="findZip_main" action="#">
					<div class="search">
						<ul>
							<li>
								<label>숙소명</label>
								<input type="text" name="zipname" style=width:150px;height:25px>
							</li>
							<li>
								<label>여행지</label>
								<input type="text" name="siname" value=" ex) 서울시" style=width:150px;height:25px>
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
								<select name="startdate" style=margin-right:10px;>
									<option value="checkin">DD</option>
								</select>
							</li>	
						</ul>
						<img src="/myweb/img/button_reset.jpg" alt="초기화버튼" style=width:30px;height:30px>
						<br>
					</div>
					<div class="condition">
						<ul>
							<li>인원수
								<select name="peoplenum" style=width:150px;height:30px;margin-left:4px>
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
							<li>가격대
								<select name="costscope" style=width:200px;height:30px;margin-left:4px>
									<option value="cost">0~80,000원</option>
									<option value="cost">80,000~120,000원</option>
									<option value="cost">120,000~160,000원</option>
									<option value="cost">160,000~200,000원</option>
								</select>	
							</li>
							<li>숙소 유형
								<select name="ziptype" style=width:150px;height:30px;margin-left:4px>
									<option value="type">아파트</option>
									<option value="type">빌라</option>
									<option value="type">주택</option>
									<option value="type">별장</option>
								</select>
							</li>
						</ul>
					</div>
					<div class="btn_search">
						<input type="button" value="SEARCH" class="myButton">
					</div>
				</form>
			</div>
			<div class="priority">
				<ul>
					<li>최신순</li>
					<li>인기순</li>
					<li>높은가격순</li>
					<li>낮은가격순</li>
				</ul>				
			</div>
			<hr style=clear:both;>
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