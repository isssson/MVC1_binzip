<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.mypage.reserve.*" %>
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
	margin-top: 40px;
	clear: both;
}
h4{
	font-size: 20px;
	text-align: center;
	margin-bottom: 30px;
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
</style>
<%
String userid=(String)session.getAttribute("sid");
String sdate=request.getParameter("sdate");
int bbsidx=Integer.parseInt(request.getParameter("bbsidx"));
int status=Integer.parseInt(request.getParameter("status"));
GuestReserveDTO dto = guestreservedao.showInfo(bbsidx, sdate, status);
%>
</head>
<body>
<%@include file="../../header.jsp" %>
<section>
	<div>
		<h2>MY RESERVATION</h2>
		<%
		if(status==0||status==1){
			%>
			<h4>예약 정보 변경</h4><hr>
			<%
		}else{
			%>
			<h4>내역 보기</h4><hr>
			<%
		}
		%>
	</div>
	<div class="info">
		<div class="zipres">
			<img src="/binzip/img/main_imgs/test_img_square.jpg" alt="추천집이미지">
		</div>
		<div class="info2">
			<h2> <%=dto.getZipname() %></h2>
			<h4> <%=dto.getZiptype() %> /  <%=dto.getZipaddr() %></h4>
			<h4>예약인원 :  <%=dto.getPeoplenum() %> 명</h4>
			<h2>&#8361;<%=dto.getCost() %></h2>
			<%
			if(dto.getStatus()==0){
				%>
				<h4>입금대기</h4>
				<%
			}else if(dto.getStatus()==1){
				%>
				<h4>입금완료</h4>
				<%
			}else if(dto.getStatus()==2){
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
			<h5>주소: <%=dto.getZipaddr() %></h5>
			<h5>호스트 이름: <%=dto.getHost_name() %></h5>
			<h5>호스트 연락처: <%=dto.getHost_phone() %></h5>
		</div>
		<hr>
		<div>
			<table>
				<tr>
					<td>집 이름</td>
					<td><%=dto.getZipname() %></td>
				</tr>
				<tr>
					<td>체크인</td>
					<td><%=dto.getReserve_startdate() %></td>
				</tr>
				<tr>
					<td>체크아웃</td>
					<td><%=dto.getReserve_enddate() %></td>
				</tr>
				<tr>
					<td>인원 수</td>
					<td><%=dto.getPeoplenum() %></td>
				</tr>
				<tr>
					<td>입금자명</td>
					<td><%=dto.getPayer() %></td>
				</tr>
				<tr>
					<td>가격</td>
					<td><%=dto.getCost() %></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><%=dto.getRequest() %></td>
				</tr>
			</table>
			<input type="button" value="뒤로가기" onclick="history.back();">
		</div>
	</div>
</section>
<%@include file="../../footer.jsp" %>	
</body>
</html>