<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.hostmypage.reserve.*" %>
<jsp:useBean id="hostreservedao" class="binzip.hostmypage.reserve.HostReserveDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	margin-top: 80px;
	clear: both;
}
h4{
	font-size: 20px;
	text-align: center;
	margin-bottom: 50px;
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
String userid = (String)session.getAttribute("sid");
int bbsidx = Integer.parseInt(request.getParameter("bbsidx"));
System.out.println(bbsidx);
HostReserveDTO dto = hostreservedao.moreInfo(userid, bbsidx);
String msg="test";
if(dto.getStatus()==0){
	msg="입금대기중";
}else{
	msg="입금완료";
}
System.out.println(msg);
%>
</head>
<body>
<%@include file="../../header.jsp" %>
	<nav id="menu">
        <ul class="list">
             <li><a href="/binzip/mypage/hostmypage/hostMyPage.jsp">개인정보</a></li>
             <li><a href="/binzip/mypage/hostmypage/hostReservationList.jsp">예약현황</a></li>
             <li><a href="../mypage_host/last reservation.jsp">지난 예약현황</a></li>
             <li><a href="../mypage_host/cancelReservation.jsp">취소 요청 내역</a></li>
             <li><a href="../mypage_host/hosting_my_zip.jsp">내가 올린 집</a></li>
             <li><a href="../mypage_host/total_Sales_host.jsp">총 매출</a></li>
             <li><a href="../mypage_host/myq&a_host.jsp">나의 문의 내역</a></li>
             <li><a href="../mypage_host/bookmark_host.jsp">관심ZIP</a></li>
             <li><a href="/binzip/member/logout.jsp">로그아웃</a></li>
         </ul>
    </nav>
	<section>
		<div>
			<h2>MY RESERVATION</h2>
			<h4>내가 받은 예약 현황</h4><hr>
		</div>
		<div>
			<table>
				<tr>
					<td>입금여부</td>
					<td><%=msg %></td>
				</tr>
				<tr>
					<td>예약자명</td>
					<td><%=dto.getReserver_name() %></td>
				</tr>
				<tr>
					<td>입금자명</td>
					<td><%=dto.getPayer() %></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><%=dto.getReserver_phone() %></td>
				</tr>
				<tr>
					<td>기간</td>
					<td><%=dto.getReserver_startdate() %> ~ <%=dto.getReserver_enddate() %></td>
				</tr>
				<tr>
					<td>인원</td>
					<td><%=dto.getPeoplenum() %></td>
				</tr>
				<tr>
					<td>금액</td>
					<td><%=dto.getCost() %></td>
				</tr>
			</table>
		</div>
		<input type="button" value="이전으로" onclick="history.back();">
	</section>
<%@include file="../../footer.jsp" %>
</body>
</html>