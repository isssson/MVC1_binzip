<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.mypage.reserve.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.*" %>
<jsp:useBean id="guestreservedao" class="binzip.mypage.reserve.GuestReserveDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게스트 마이페이지 - 예약 정보 확인</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<style>
.list{
	list-style: none;
}
#menu{
	width:1200px;
	height: 50px;
	margin-left: 350px;
}
#menu ul li{
	float: left;
	line-height: 30px;
	text-align: center;
	background: lightgray;
}
#menu ul li a{
 	display: block;
 	padding: 5px;
}
#menu ul li a:hover{
	background: gray;
	color: black;
}
h2{
	font-size: 40px;
	text-align: center;
	margin-top: 1px;
	clear: both;
}
h4{
	font-size: 20px;
	text-align: center;
	margin-bottom: 20px;
}
.zipres img{
	width: 380px;
	height: 380px;
	float:left;
	margin-left: 250px;
	margin-right: 40px;
}
.info{
	margin-bottom: 500px;
}
.info2{
	height: 380px;
	width: 380px;
	font-size: 10px; 
	float:left;
}
table{
	margin: 0px auto;
	width: 500px;
	height: 300px;
	text-align: center;
}
th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
}
.btjoin {
	background-color:#000000;
	border-radius:18px;
	border:1px solid #000000;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:12px;
	padding:5px 22px;
	text-decoration:none;
	margin-top: 2px;
}
.btjoin:hover {
	background-color:#ffffff;
	color:#000000;
}
.btalign{
	text-align: center;
}
</style>
<%

String userid=(String)session.getAttribute("sid");
String s_sdate=request.getParameter("sdate");

DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

Date d_sdate=sdf.parse(s_sdate);

String sdate = sdf.format(d_sdate);

int bbsidx=Integer.parseInt(request.getParameter("bbsidx"));
int status=Integer.parseInt(request.getParameter("status"));

%>
</head>
<body>
<%@include file="../../header.jsp" %>
<section>
	<div>
		<h2>MY RESERVATION</h2>
		<%
		if(status==0 || status==1){
			%>
			<h4>예약 정보 확인</h4><hr>
			<%
		}else{
			%>
			<h4>내역 보기</h4><hr>
			<%
		}
		%>
	</div>
	<% 
	ArrayList<GuestReserveDTO> arr = guestreservedao.showInfo(bbsidx, sdate, status);
	if(arr == null || arr.size() == 0 || arr.get(0).getZipname() == null) {
		%> 
 		<div class="info">
			<h2>잘못된 접근입니다.(</h2>
		</div>
		<%
	} else {
		for(int i = 0; i < arr.size(); i++) {
			String imgpath = arr.get(i).getImgpath();
			String[] imgpath_main = imgpath.split(",");
			
			int cost = arr.get(i).getCost();
			DecimalFormat df = new DecimalFormat("###,###,###");
			String dfCost = df.format(cost);
			%>
	<div class="info">
		<div class="zipres">
			<img alt="숙소사진" src="/img/<%= arr.get(i).getBinzip_member_id() %>/<%= arr.get(i).getBbsidx() %>/<%= imgpath_main[0] %>">
		</div>
		<div class="info2">
			<h2> <%=arr.get(i).getZipname() %></h2>
			<h4> <%=arr.get(i).getZiptype() %> /  <%=arr.get(i).getZipaddr() %></h4>
			<h4>예약인원 :  <%=arr.get(i).getR_pnum() %> 명</h4>
			<h2>&#8361;<%=arr.get(i).getR_cost() %></h2>
			<%
			if(arr.get(i).getStatus() == 0) {
				%>
				<h4>입금대기</h4>
				<%
			}else if(arr.get(i).getStatus()==1) { 
				%>
				<h4>입금완료</h4>
				<%
			}else if(arr.get(i).getStatus()==2){
				%>
				<h4>숙박중</h4>
				<%
			}else{
				%>
				<h4>만료</h4>
				<%
			}
		
			%>
			</div>
		<div>
			<h5>주소: <%=arr.get(i).getZipaddr() %></h5>
			<h5>호스트 이름: <%=arr.get(i).getHost_name() %></h5>
			<h5>호스트 연락처: <%=arr.get(i).getHost_phone() %></h5>
		</div>
		<hr>
		<div>
			<table>
				<tr>
					<td>집 이름</td>
					<td><%=arr.get(i).getZipname() %></td>
				</tr>
				<tr>
					<td>체크인</td>
					<td><%=arr.get(i).getReserve_startdate().substring(0, 11) %></td>
				</tr>
				<tr>
					<td>체크아웃</td>
					<td><%=arr.get(i).getReserve_enddate().substring(0, 11) %></td>
				</tr>
				<tr>
					<td>인원 수</td>
					<td><%=arr.get(i).getHpeoplenum() %></td>
				</tr>
				<tr>
					<td>입금자명</td>
					<td><%=arr.get(i).getPayer() %></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><%=arr.get(i).getHcost() %></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><%=arr.get(i).getContents() %></td>
				</tr>
			</table>
			<br>
			<div style="text-align: center;">
			<input type="button" value="뒤로가기" class="btjoin" onclick="history.back();">
			</div>
		</div>
	</div>
		<%
		}
	}
		%>	
		
</section>
<%@include file="../../footer.jsp" %>	
</body>
</html>