<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
String region=request.getParameter("region");
String siGunGu=request.getParameter("siGunGu");
int startYear=Integer.parseInt(request.getParameter("startYear"));
int startMonth=Integer.parseInt(request.getParameter("startMonth"));
int startDate=Integer.parseInt(request.getParameter("startDate"));
int endYear=Integer.parseInt(request.getParameter("endYear"));
int endMonth=Integer.parseInt(request.getParameter("endMonth"));
int endDate=Integer.parseInt(request.getParameter("endDate"));
String totalAddr=region+" "+siGunGu; 
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>BINZIP-집찾기</title>
	<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
	<style>
		.findzipMainText {
			text-align: center;
			clear: both;
			margin-top: 50px;
			font-size: 22px;
			border-width: 1px;
		}
		.findzipMainText span {
			font-size: 14px;
		}
		.search01, .search02 {
		    height: 50px;
		}
		.search01 ul, 
		.search02 ul {
			list-style-type: none;
			width: 1200px;
			height: 30px;
			padding-left: 0;
			display: inline;
		}
		.search01 li, 
		.search02 li {
			float: left;
		}
		.search01 li {
			margin-right: 10px;
		}
		.search01 input, .search02 select {
		    width: 150px;
		}
		.search02 li {
			margin-right: 18px;
		}
		#btn_init:hover {
		    cursor: pointer;
		}
		.btn_search {
			clear: both;
			text-align: center;
		}
		.priority {
			float: right;
			margin-bottom: 10px;
			font-size: 15px;
			list-style-type: none;
		}
		.priority li {
			float: left;
			margin-left: 40px;
		}
		.priority a {
			text-decoration:none;
		}
		.myButton {
			margin-top: 25px;
			margin-bottom: 50px;
			text-align: center;
		}
		.line-first{
			width: 100%;
		}
		.devided_zip ul {
			list-style-type: none;
		}
		.devided_zip li {
			float: left;
			margin-left: 5px;
		}
		hr {
			border-width: 2px;
			margin-top: 30px;
			margin-bottom: 25px;
		}
		.findzip_list_row {
			display: inline-block;
			margin-top: 10px;
		}
		.findzip_list_left, 
		.findzip_list_right
		{
			width: 50%;
		}
		.findzip_list_left {
			float: left;
		}
		.findzip_list_right {
			float: right;
		}
		.findzip_list_sub {
			width: 600px;
			margin-left: 50px;
		}
		.findzip_list_sub h1, 
		.findzip_list_sub h5
		{
			margin: 0px;
			text-align: left;
		}
		.findzip_list_cont {
			width: 180px;
			float: left;
		}
		.findzip_list_img {
			width: 420px;
			float: right;
		}
		.findzip_list_img img {
			width: 400px;
			padding-bottom: 30px;
		}
		.p_discribe {
			margin: 50px 0 70px;
			text-align: center;
		}
		.lb_book {
			font-weight: bold;
			font-size: 14pt;
			margin-left: 40px;	
		}
	</style>
	<%
	Calendar myDate=Calendar.getInstance();
	int year=myDate.get(Calendar.YEAR);
	int month=myDate.get(Calendar.MONTH)+1;
	int date=myDate.get(Calendar.DATE);
	%>
</head>

<body>
	<%@include file="../header.jsp" %>
	<section>
		<article>
			<div class="findzipMainText">
				<h1>F&nbsp; I&nbsp; N&nbsp;
					D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Z&nbsp; I&nbsp; P</h1>
				<span>머무는 것 자체로 여행이 되는 공간</span>
			</div>
		</article>
	
		<article>
			<hr>
			<div>
				<form name="findZip_main" action="#">
					<div class="search01">
						<ul>
							<li id="let_empty" style=margin-left:10px>
								<label>숙소명</label> 
								<input type="text" name="zipname">
							</li>
							<li id="let_empty" style=margin-left:50px>
								<label>여행지</label> 
								<input type="text" name="siname" value="<%=totalAddr%>">
							</li>
							<li id="let_empty" style=margin-left:50px>
								<label>체크 인</label>
								<select name="fz_startYear">
									<%
									for(int i=year;i<year+21;i++){
										if(i==year){
											%>
											<option value=<%=i %> selected><%=startYear %>년</option>
											<%
										}else{
											%>
											<option value=<%=i %>><%=i %>년</option>
											<%
										}
									}
									%>
								</select>
								<select name="fz_startMonth">
									<%
									for(int j=1;j<13;j++){
										if(j==month){
											%>
											<option value=<%=j %> selected><%=startMonth %>월</option>
											<%
										}else{
											%>
											<option value=<%=j %>><%=j %>월</option>
											<%
										}
									}
									%>
								</select>
								<select name="fz_startDate">
									<%
									for(int k=1;k<32;k++){
										if(k==date){
											%>
											<option value=<%=k %> selected><%=startDate %>일</option>
											<%
										}else{
											%>
											<option value=<%=k %>><%=k %>일</option>
											<%
										}
									}
									%>
								</select>
							</li>
							<li id="let_empty" style=margin-left:50px>
								<label>체크 아웃</label>
									<select name="fz_endYear">
										<%
										for(int i=year;i<year+21;i++){
											if(i==year){
												%>
												<option value=<%=i %> selected><%=endYear %>년</option>
												<%
											}else{
												%>
												<option value=<%=i %>><%=i %>년</option>
												<%
											}
										}
										%>
									</select>
									<select name="fz_endMonth">
										<%
										for(int j=1;j<13;j++){
											if(j==month){
												%>
												<option value=<%=j %> selected><%=endMonth %>월</option>
												<%
											}else{
												%>
												<option value=<%=j %>><%=j %>월</option>
												<%
											}
										}
										%>
									</select>
									<select name="fz_endDate">
										<%
										for(int k=1;k<32;k++){
											if(k==date){
												%>
												<option value=<%=k %> selected><%=endDate %>일</option>
												<%
											}else{
												%>
												<option value=<%=k %>><%=k %>일</option>
												<%
											}
										}
										%>
									</select>
							</li>
						</ul>
						<img src="findzip_imgs/button_reset.png" alt="초기화버튼" style="width:30px;float:right;" id="btn_init">
					</div>
					<div class="search02" style="clear:both;">
						<ul>
							<li id="let_empty" style=margin-left:10px>
								<label>인원수</label>
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
							<li id="let_empty" style=margin-left:50px>
								<label>가격대</label>
								<select name="costscope">
									<option value="cost">0~80,000원</option>
									<option value="cost">80,000~120,000원</option>
									<option value="cost">120,000~160,000원</option>
									<option value="cost">160,000~200,000원</option>
								</select>
							</li>
							<li id="let_empty" style=margin-left:50px>
								<label>숙소 유형</label>
								<select name="ziptype">
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
					<li><a href="#">최신순</a></li>
					<li><a href="#">인기순</a></li>
					<li><a href="#">높은가격순</a></li>
					<li><a href="#">낮은가격순</a></li>
				</ul>
			</div>
			<hr style="clear: both;">
		</article>
		<article>
		<div class="findzip_list_row">
			<div class="findzip_list_left">
				<div class="findzip_list_sub">
					<h1>모노가든</h1>
					<h5>디자인펜션</h5>
				</div>
				<div class="devided_zip">
					<div class="findzip_list_cont">
						<p class="p_discribe">
						제주 / 제주시<br>
						기준 2명 / (최대 3명)<br>
						&#92;200,000 ~ &#92;440,000
						</p>
						<label class="lb_book"><a href="#">예약하기</a></label>
					</div>
					<div class="findzip_list_img">
						<img alt="숙소사진" src="findzip_imgs/test_findzip_img.jpg">
					</div>					
				</div>
			</div>
			<div class="findzip_list_right">
				<div class="findzip_list_sub">
					<h1>모노가든</h1>
					<h5>디자인펜션</h5>
				</div>
				<div class="devided_zip">
					<div class="findzip_list_cont">
						<p class="p_discribe">
						제주 / 제주시<br>
						기준 2명 / (최대 3명)<br>
						&#92;200,000 ~ &#92;440,000
						</p>
						<label class="lb_book"><a href="#">예약하기</a></label>
					</div>
					<div class="findzip_list_img">
						<img alt="숙소사진" src="findzip_imgs/test_findzip_img.jpg">
					</div>
				</div>
			</div>
		</div>
		<div class="findzip_list_row">
			<div class="findzip_list_left">
				<div class="findzip_list_sub">
					<h1>모노가든</h1>
					<h5>디자인펜션</h5>
				</div>
				<div class="devided_zip">
					<div class="findzip_list_cont">
						<p class="p_discribe">
						제주 / 제주시<br>
						기준 2명 / (최대 3명)<br>
						&#92;200,000 ~ &#92;440,000
						</p>
						<label class="lb_book"><a href="#">예약하기</a></label>
					</div>
					<div class="findzip_list_img">
						<img alt="숙소사진" src="findzip_imgs/test_findzip_img.jpg">
					</div>					
				</div>
			</div>
			<div class="findzip_list_right">
				<div class="findzip_list_sub">
					<h1>모노가든</h1>
					<h5>디자인펜션</h5>
				</div>
				<div class="devided_zip">
					<div class="findzip_list_cont">
						<p class="p_discribe">
						제주 / 제주시<br>
						기준 2명 / (최대 3명)<br>
						&#92;200,000 ~ &#92;440,000
						</p>
						<label class="lb_book"><a href="#">예약하기</a></label>
					</div>
					<div class="findzip_list_img">
						<img alt="숙소사진" src="findzip_imgs/test_findzip_img.jpg">
					</div>
				</div>
			</div>
		</div>
		<div class="findzip_list_row">
			<div class="findzip_list_left">
				<div class="findzip_list_sub">
					<h1>모노가든</h1>
					<h5>디자인펜션</h5>
				</div>
				<div class="devided_zip">
					<div class="findzip_list_cont">
						<p class="p_discribe">
						제주 / 제주시<br>
						기준 2명 / (최대 3명)<br>
						&#92;200,000 ~ &#92;440,000
						</p>
						<label class="lb_book"><a href="#">예약하기</a></label>
					</div>
					<div class="findzip_list_img">
						<img alt="숙소사진" src="findzip_imgs/test_findzip_img.jpg">
					</div>					
				</div>
			</div>
			<div class="findzip_list_right">
				<div class="findzip_list_sub">
					<h1>모노가든</h1>
					<h5>디자인펜션</h5>
				</div>
				<div class="devided_zip">
					<div class="findzip_list_cont">
						<p class="p_discribe">
						제주 / 제주시<br>
						기준 2명 / (최대 3명)<br>
						&#92;200,000 ~ &#92;440,000
						</p>
						<label class="lb_book"><a href="#">예약하기</a></label>
					</div>
					<div class="findzip_list_img">
						<img alt="숙소사진" src="findzip_imgs/test_findzip_img.jpg">
					</div>
				</div>
			</div>
		</div>
		<div class="findzip_list_row">
			<div class="findzip_list_left">
				<div class="findzip_list_sub">
					<h1>모노가든</h1>
					<h5>디자인펜션</h5>
				</div>
				<div class="devided_zip">
					<div class="findzip_list_cont">
						<p class="p_discribe">
						제주 / 제주시<br>
						기준 2명 / (최대 3명)<br>
						&#92;200,000 ~ &#92;440,000
						</p>
						<label class="lb_book"><a href="#">예약하기</a></label>
					</div>
					<div class="findzip_list_img">
						<img alt="숙소사진" src="findzip_imgs/test_findzip_img.jpg">
					</div>					
				</div>
			</div>
			<div class="findzip_list_right">
				<div class="findzip_list_sub">
					<h1>모노가든</h1>
					<h5>디자인펜션</h5>
				</div>
				<div class="devided_zip">
					<div class="findzip_list_cont">
						<p class="p_discribe">
						제주 / 제주시<br>
						기준 2명 / (최대 3명)<br>
						&#92;200,000 ~ &#92;440,000
						</p>
						<label class="lb_book"><a href="#">예약하기</a></label>
					</div>
					<div class="findzip_list_img">
						<img alt="숙소사진" src="findzip_imgs/test_findzip_img.jpg">
					</div>
				</div>
			</div>
		</div>
		<div class="findzip_list_row">
			<div class="findzip_list_left">
				<div class="findzip_list_sub">
					<h1>모노가든</h1>
					<h5>디자인펜션</h5>
				</div>
				<div class="devided_zip">
					<div class="findzip_list_cont">
						<p class="p_discribe">
						제주 / 제주시<br>
						기준 2명 / (최대 3명)<br>
						&#92;200,000 ~ &#92;440,000
						</p>
						<label class="lb_book"><a href="#">예약하기</a></label>
					</div>
					<div class="findzip_list_img">
						<img alt="숙소사진" src="findzip_imgs/test_findzip_img.jpg">
					</div>					
				</div>
			</div>
			<div class="findzip_list_right">
				<div class="findzip_list_sub">
					<h1>모노가든</h1>
					<h5>디자인펜션</h5>
				</div>
				<div class="devided_zip">
					<div class="findzip_list_cont">
						<p class="p_discribe">
						제주 / 제주시<br>
						기준 2명 / (최대 3명)<br>
						&#92;200,000 ~ &#92;440,000
						</p>
						<label class="lb_book"><a href="#">예약하기</a></label>
					</div>
					<div class="findzip_list_img">
						<img alt="숙소사진" src="findzip_imgs/test_findzip_img.jpg">
					</div>
				</div>
			</div>
		</div>
	</article>
		<div style="clear:both;"></div>
	</section>	
	<%@include file="../footer.jsp" %>
</body>
</html>







