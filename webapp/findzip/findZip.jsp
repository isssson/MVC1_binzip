<%@page import="java.text.NumberFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>
<%@ page import="binzip.findzip.*" %>
<jsp:useBean id="binzipaddrdao" class="binzip.addr.Binzip_AddrDAO"></jsp:useBean>
<jsp:useBean id="findzipdao" class="binzip.findzip.FindzipDAO"></jsp:useBean>

<%
	request.setCharacterEncoding("utf-8");
	String si_do = request.getParameter("sido");
	String startDate = request.getParameter("startDate");
	String endDate = request.getParameter("endDate");
	
	if(si_do == null || si_do.equals("")) { //null방지. 유효성검사 항상 해주세용.
		si_do = "";
	}
	
	//test code
	System.out.println(si_do);
	System.out.println(startDate); 
	System.out.println(endDate);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>FIND ZIP</title>
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
</head>

<%
	//오늘 날짜 관련 추출 관련
	Calendar myDate = Calendar.getInstance();

	int year = myDate.get(Calendar.YEAR);
	int month = myDate.get(Calendar.MONTH)+1;
	int date = myDate.get(Calendar.DATE);
	
	String s_year = Integer.toString(year);
	String s_month = Integer.toString(month);
	String s_date = Integer.toString(date);
	String s_minDate = s_year + "-" + s_month + "-" + s_date;
%>

<%
	//페이징 관련
	int totalCnt = findzipdao.getTotalCnt(); //총 게시물 수
	int listSize = 10; //보여줄 리스트 수
	int pageSize = 5; //보여줄 페이지 수
	
	String cp_s = request.getParameter("cp");
	if(cp_s == null || cp_s.equals("")) {
		cp_s = "1";
	}
	
	int cp = Integer.parseInt(cp_s); 
	
	int totalPage = (totalCnt / listSize) + 1;
	if(totalCnt % listSize == 0) totalPage--;
	
	int userGroup = cp / pageSize;
	if(cp % pageSize == 0) userGroup--;
%>

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
		<!-- Navigation Area -->
		<nav>
			<hr>
			<div>
				<form name="findZip_main" action="#">
					<div class="search01">
						<ul>
							<li class="let_empty" style=margin-left:10px>
								<label>숙소명</label> 
								<input type="text" name="zipname">
							</li>
							<li class="let_empty" style=margin-left:50px>
								<label>여행지</label> 
								<input type="text" name="spot" value="<%= si_do %>">
							</li>
							<li class="let_empty" style=margin-left:50px>
								<label>체크 인</label>
								<input type="date" name="fz_cInDate" min="<%= s_minDate %>" required pattern="\d{4}-\d{2}-\d{2}" value="<%= startDate %>">
							</li>
							<li class="let_empty" style=margin-left:50px>
								<label>체크 아웃</label>
								<input type="date" name="fz_cOutDate" required pattern="\d{4}-\d{2}-\d{2}" value="<%= endDate %>">
							</li>
						</ul>
						<img src="findzip_imgs/button_reset.png" alt="초기화버튼" style="width:30px;float:right;" id="btn_init">
					</div>
					<div class="search02" style="clear:both;">
						<ul>
							<li class="let_empty" style=margin-left:10px>
								<label>인원수</label>
								<select name="peoplenum">
									<option value="1">1인</option>
									<option value="2">2인</option>
									<option value="3">3인</option>
									<option value="4">4인</option>
									<option value="5">5인</option>
									<option value="6">6인</option>
									<option value="7">7인</option>
									<option value="8">8인</option>
								</select>
							</li>
							<li class="let_empty" style=margin-left:50px>
								<label>가격대</label>
								<select name="costscope">
									<option value="80000">0~80,000원</option>
									<option value="120000">80,000~120,000원</option>
									<option value="160000">120,000~160,000원</option>
									<option value="200000">160,000~200,000원</option>
								</select>
							</li>
							<li class="let_empty" style=margin-left:50px>
								<label>숙소 유형</label>
								<select name="ziptype">
									<option value="아파트">아파트</option>
									<option value="빌라">빌라</option>
									<option value="주택">주택</option>
									<option value="별장">별장</option>
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
		</nav>
		
		<!-- List Area -->
		<article>
			<div class="findzip_list_row">
			<%
				ArrayList<FindzipDTO> arr = findzipdao.findzipList(cp, listSize);
				
				if(arr == null || arr.size() == 0) {
				%>
					<h1>등록된 ZIP이 없습니다.</h1>	
				<%
				} else {
					for(int i = 0; i < arr.size(); i++) {
						String zipaddr_s = arr.get(i).getZipaddr();
						String[] zipaddr_sido = zipaddr_s.split(" ");
						NumberFormat nf = NumberFormat.getNumberInstance();
						int cost = arr.get(i).getCost();
					%>
						<div class="findzip_list_left">
							<a href="findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>"><div class="findzip_list_sub">
								<h1><%= arr.get(i).getZipname() %></h1>
								<h5><%= arr.get(i).getZiptype() %></h5>
							</div>
							<div class="devided_zip">
								<div class="findzip_list_cont">
									<p class="p_discribe">
									<%= zipaddr_sido[0] %> / <%= zipaddr_sido[1] %><br>
									최대 <%= arr.get(i).getPeoplenum() %>명<br>
									&#92;<%= nf.format(cost) %>원
									</p>
									<label class="lb_book"><a href="#">예약하기</a></label>
								</div>
								<div class="findzip_list_img">
									<img alt="숙소사진" src="findzip_imgs/test_findzip_img.jpg">
								</div>					
							</div></a>
						</div>
						
					<%
						for(int j = i; j < arr.size(); j++) {
							String zipaddr_s2 = arr.get(j).getZipaddr();
							String[] zipaddr_sido2 = zipaddr_s2.split(" ");
						%>
							<div class="findzip_list_right">
								<div class="findzip_list_sub">
									<h1><%= arr.get(j).getZipname() %></h1>
									<h5><%= arr.get(j).getZiptype() %></h5>
								</div>
								<div class="devided_zip">
									<div class="findzip_list_cont">
										<p class="p_discribe">
										<%= zipaddr_sido2[0] %> / <%= zipaddr_sido2[1] %><br>
										최대 <%= arr.get(j).getPeoplenum() %>명<br>
										&#92;<%= arr.get(j).getCost() %>원
										</p>
										<label class="lb_book"><a href="#">예약하기</a></label>
									</div>
									<div class="findzip_list_img">
										<img alt="숙소사진" src="findzip_imgs/test_findzip_img.jpg">
									</div>
								</div>
							</div>
						<%
						}
					}
				}
			%>
			</div>
			
			<!-- Paginateon Area -->
			<div class="paginateon_area">
				<% 
					if(userGroup != 0) {
						%>
						<a href="findZip.jsp?cp=<%= (userGroup - 1) * pageSize + pageSize %>">&lt;&lt;</a>
						<%
					}
				%>
				<%
					for(int i = (userGroup * pageSize) + 1; i <= (userGroup * pageSize) + pageSize; i++) {
						%>&nbsp;&nbsp;<a href="findZip.jsp?cp=<%= i %>"><%= i %></a>&nbsp;&nbsp;<%
						if(i == totalPage) { 
							break; 
						}
					}
				%>
				<%
					if(userGroup != (totalPage / pageSize) - (totalPage % pageSize == 0 ? 1 : 0)) {
						%>
						<a href="findZip.jsp?cp=<%= (userGroup + 1) * pageSize + 1 %>">&gt;&gt;</a>
						<%
					}
				%>
			</div>
		</article>
	</section>	
	<%@include file="../footer.jsp" %>
</body>
</html>