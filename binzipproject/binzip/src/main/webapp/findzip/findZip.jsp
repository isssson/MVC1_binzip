<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.lang.reflect.Method"%>
<%@page import="com.sun.jdi.Field"%>
    
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="binzip.findzip.*" %>
<jsp:useBean id="findzipdto" class="binzip.findzip.FindzipDTO"></jsp:useBean>
<jsp:setProperty property="*" name="findzipdto"/>
<jsp:useBean id="binzipaddrdao" class="binzip.addr.Binzip_AddrDAO"></jsp:useBean>
<jsp:useBean id="findzipdao" class="binzip.findzip.FindzipDAO"></jsp:useBean>

<%
	request.setCharacterEncoding("utf-8");
	String zipaddr = request.getParameter("zipaddr");
	String inDate = request.getParameter("inDate");
	String outDate = request.getParameter("outDate");
	
	if(zipaddr == null || zipaddr.equals("")) { 
		zipaddr = "";
	}
	
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
		.priority a:hover {
		    cursor: pointer;
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
			margin-top: 40px;
			margin-bottom: 50px;
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
		.findzip_list_cont h1{
			text-align: center;
		}
		.findzip_list_img {
			width: 420px;
			float: right;
		}
		.findzip_list_img img {
			width: 400px;
			height: 266px;
			padding-bottom: 80px;
			object-fit: cover;
		}
		.p_discribe {
		    margin: 50px 0 40px;
			text-align: center;
		}
		.lb_book {
		    font-weight: bold;
		    font-size: 14pt;
		    display: block;
		    text-align: center;
		    margin: 10px auto;
		}
		.lb_book a:link{
			text-decoration: decoration;
			color: black;
		}
		.lb_book a:visited{
			text-decoration: none;
			color: black;
		}
		.lb_book a:hover {
			cursor: pointer;
			color: lightgray;
		}
		.paginateon_area{
			text-align: center;
		}
		.myButton {
			background-color:#000000;
			border-radius:30px;
			border:1px solid #000000;
			cursor:pointer;
			color:#ffffff;
			font-family:Arial;
			font-size:17px;
			padding:10px 25px;
			text-decoration:none;
		}
		.myButton:hover {
			background-color:#ffffff;
			color:#000000;
		}
		.paginateon_area a:hover {
		    cursor: pointer;
	</style>
</head>

<%
	//?????? ??????
	Calendar myDate = Calendar.getInstance();

	int year = myDate.get(Calendar.YEAR);
	int month = myDate.get(Calendar.MONTH)+1;
	int date = myDate.get(Calendar.DATE);
	
	String s_year = Integer.toString(year);
	String s_month = Integer.toString(month);
	String s_date = Integer.toString(date);
	String s_minDate = s_year + "-" + s_month + "-" + s_date;
	
	//??????????????????
	int totalCnt = findzipdao.getTotalCnt();
	int listSize = 10;
	int pageSize = 5;
	
	String cp_s = request.getParameter("cp");
	if(cp_s == null || cp_s.equals("")) {
		cp_s = "1";
	}
	
	int cp = Integer.parseInt(cp_s); 
	
	int totalPage = (totalCnt / listSize) + 1;
	if(totalCnt % listSize == 0) {
		totalPage--;
	}
	
	int userGroup = cp / pageSize;
	if(cp % pageSize == 0) {
		userGroup--;
	}
	
	String searchGb = request.getParameter("searchGb");
	String zipname = request.getParameter("zipname");
	if (zipname == null) {
		zipname = "";
	}
%>

<body>
	<%@include file="../header.jsp" %>
	<section>
		<article>
			<div class="findzipMainText">
				<h1>F&nbsp; I&nbsp; N&nbsp;
					D&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Z&nbsp; I&nbsp; P</h1>
				<span>?????????&nbsp;???&nbsp; ????????? &nbsp;????????? &nbsp;?????? &nbsp;??????</span>
			</div>
		</article>
		<!-- Navigation Area -->
		<nav>
			<hr>
			<div>
				<form name="search_fm" id="search_fm" action="findZip.jsp">
					<input type="hidden" id="cp" name="cp" value="<%= cp %>"/>
					<input type="hidden" id="searchGb" name="searchGb" value="<%= searchGb %>"/>
					<input type="hidden" id="listSize" name="listSize" value="<%= listSize %>"/>
					<div class="search01">
						<ul>
							<li class="let_empty" style=margin-left:10px>
								<label>?????????</label> 
								<input type="text" name="zipname" value="<%= zipname %>"/>
							</li>
							<li class="let_empty" style=margin-left:50px>
								<label>?????????</label> 
								<input type="text" name="zipaddr" value="<%= zipaddr %>"/>
							</li>
							<li class="let_empty" style=margin-left:50px>
								<label>?????? ???&nbsp;&nbsp;</label>
								<input type="date" name="inDate" min="<%= s_minDate %>" required pattern="\d{4}-\d{2}-\d{2}" value="<%= inDate %>"/>
							</li>
							<li class="let_empty" style=margin-left:50px>
								<label>?????? ??????</label>
								<input type="date" name="outDate" min="<%= s_minDate %>" required pattern="\d{4}-\d{2}-\d{2}" value="<%= outDate %>"/>
							</li>
						</ul>
						<img src="findzip_imgs/button_reset.png" alt="???????????????" style="width:30px;float:right;" id="btn_init" onclick="location.href='findZip.jsp'">
					</div>
					<div class="search02" style="clear:both;">
						<ul>
							<li class="let_empty" style=margin-left:10px>
								<label>?????????</label>
								<select name="peoplenum">
									<option value="1" <%= "1".equals(request.getParameter("peoplenum")) ? "selected" : "" %>>1???</option>
									<option value="2" <%= "2".equals(request.getParameter("peoplenum")) ? "selected" : "" %>>2???</option>
									<option value="3" <%= "3".equals(request.getParameter("peoplenum")) ? "selected" : "" %>>3???</option>
									<option value="4" <%= "4".equals(request.getParameter("peoplenum")) ? "selected" : "" %>>4???</option>
									<option value="5" <%= "5".equals(request.getParameter("peoplenum")) ? "selected" : "" %>>5???</option>
									<option value="6" <%= "6".equals(request.getParameter("peoplenum")) ? "selected" : "" %>>6???</option>
									<option value="7" <%= "7".equals(request.getParameter("peoplenum")) ? "selected" : "" %>>7???</option>
									<option value="8" <%= "8".equals(request.getParameter("peoplenum")) ? "selected" : "" %>>8???</option>
								</select>
							</li>
							<li class="let_empty" style=margin-left:50px>
								<label>?????????</label>
								<select name="cost">
									<option value="<%= request.getParameter("cost") == null ? 0 : request.getParameter("cost") %>">??????</option>
									<option value="100000" <%= "100000".equals(request.getParameter("cost")) ? "selected" : "" %>>100,000??? ??????</option>
									<option value="200000" <%= "200000".equals(request.getParameter("cost")) ? "selected" : "" %>>200,000??? ??????</option>
									<option value="300000" <%= "300000".equals(request.getParameter("cost")) ? "selected" : "" %>>300,000??? ??????</option>
									<option value="400000" <%= "400000".equals(request.getParameter("cost")) ? "selected" : "" %>>400,000??? ??????</option>
									<option value="500000" <%= "500000".equals(request.getParameter("cost")) ? "selected" : "" %>>500,000??? ??????</option>
								</select>
							</li>
							<li class="let_empty" style=margin-left:50px>
								<label>?????? ??????</label>
								<select name="ziptype">
									<option value="" <%= request.getParameter("ziptype") == null ? "selected" : "" %>>??????</option>
									<option value="apt" <%= "apt".equals(request.getParameter("ziptype")) ? "selected" : "" %>>?????????</option>
									<option value="villa" <%= "villa".equals(request.getParameter("ziptype")) ? "selected" : "" %>>??????</option>
									<option value="house" <%= "house".equals(request.getParameter("ziptype")) ? "selected" : "" %>>??????</option>
									<option value="hotel" <%= "hotel".equals(request.getParameter("ziptype")) ? "selected" : "" %>>??????</option>
									<option value="outhoues" <%= "outhoues".equals(request.getParameter("ziptype")) ? "selected" : "" %>>??????</option>
								</select>
							</li>
						</ul>
					</div>
					<div class="btn_search">
						<button type="button" class="myButton" onclick="searchGb.value='recently'; fnSearch();">SEARCH</button>
					</div>
				</form>
			</div>
			<div class="priority">
				<ul>
					<li><a onclick="searchGb.value='recently'; fnSearch();">?????????</a></li>
					<li><a onclick="searchGb.value='popular'; fnSearch();">?????????</a></li>
					<li><a onclick="searchGb.value='high'; fnSearch();">???????????????</a></li>
					<li><a onclick="searchGb.value='low'; fnSearch();">???????????????</a></li>
				</ul>
			</div>
			<hr style="clear: both;">
		</nav>
		
		<!-- List Area --------------------------------------------------------------------------------------------------------------------------------------------------------->
		<article>
			<div class="findzip_list_row">
			<%
				ArrayList<FindzipDTO> arr = new ArrayList<FindzipDTO>();
				
				FindzipDTO params = new FindzipDTO();
				params.setSearchGb(searchGb);
				params.setCp(Integer.valueOf((request.getParameter("cp") == null) ? "1" : request.getParameter("cp")));
				params.setListSize(Integer.valueOf((request.getParameter("listSize") == null) ? "10" : request.getParameter("listSize")));
				params.setInDate(request.getParameter("inDate"));
				params.setOutDate(request.getParameter("outDate"));
				params.setPeoplenum(Integer.valueOf((request.getParameter("peoplenum") == null) ? "1": request.getParameter("peoplenum")));
				params.setZiptype(request.getParameter("ziptype"));
				params.setZipaddr(zipaddr);
				params.setZipname(zipname);
				params.setCost(Integer.valueOf((request.getParameter("cost") == null) ? "0" : request.getParameter("cost")));   
				
				
				arr = findzipdao.findZipListNew(params);
				
				if(arr == null || arr.size() == 0) {
				%>
					<h1>????????? ZIP??? ????????????.</h1>	
				<%
				} else {
					for(int i = 0; i < arr.size(); i++) {
						
						String zipaddr_s = arr.get(i).getZipaddr();
						String[] zipaddr_sido = zipaddr_s.split(" ");
						
						String imgpath = arr.get(i).getImgpath();
						String[] imgpath_main = imgpath.split(",");
						
						int cost = arr.get(i).getCost();
						DecimalFormat df = new DecimalFormat("###,###,###");
						String dfCost = df.format(cost);
					
					%>
						<div class="findzip_list_left">
							<div class="devided_zip">
								<div class="findzip_list_cont">
									<h1><%= arr.get(i).getZipname() %></h1>
									<h5><%= arr.get(i).getZiptype() %></h5>
									<p class="p_discribe">
										<%= zipaddr_sido[0] %> / <%= zipaddr_sido[1] %><br>
										?????? <%= arr.get(i).getPeoplenum() %>???<br>
										&#92;<%= dfCost %>
									</p>
									<label class="lb_book">
										<a href="findzipContent.jsp?idx=<%=arr.get(i).getIdx()%>">
											????????????
										</a></label>
								</div>
								<div class="findzip_list_img">
									<img alt="????????????" src="/img/<%= arr.get(i).getBinzip_member_id() %>/<%= arr.get(i).getIdx() %>/<%= imgpath_main[0] %>">
								</div>					
							</div>
							
						</div>
					<%	
					}	
				}
			%>
			</div>
			
			<!-- Paginateon Area ------------------------------------------------------------------------------------------------------------------------------------------------>
			<div class="paginateon_area">
				<% 
					if(userGroup != 0) {
						%>
						<a onclick="cp.value='<%= (userGroup - 1) * pageSize + pageSize %>'; search_fm.submit();">
							&lt;&lt;
						</a>
						<%
					}
				%>
				<%
					for(int i = (userGroup * pageSize) + 1; i <= (userGroup * pageSize) + pageSize; i++) {
						%>
						&nbsp;&nbsp;
						<a onclick="cp.value='<%= i %>'; search_fm.submit();">
							<%= i %>
						</a>
						&nbsp;&nbsp;
						<%
						if(i == totalPage) { 
							break; 
						}
					}
				%>
				<%
					if(userGroup != (totalPage / pageSize) - (totalPage % pageSize == 0 ? 1 : 0)) {
						%>
						<a onclick="cp.value='<%= (userGroup + 1) * pageSize + 1 %>'; search_fm.submit();">
							&gt;&gt;
						</a>
						<%
					}
				%>
			</div>
		</article>
	</section>	
	
	<script>
		function formReset() {
			document.getElementById("search_fm").reset();
		}
		
		function fnSearch() {
			search_fm.submit();
		}		
	</script>
	
	<%@include file="../footer.jsp" %>
</body>
</html>