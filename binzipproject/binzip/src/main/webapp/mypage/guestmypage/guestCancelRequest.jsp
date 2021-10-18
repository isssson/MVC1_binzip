<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="binzip.mypage.reserve.*" %>
<jsp:useBean id="guestmypagereservedao" class="binzip.mypage.reserve.GuestReserveDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게스트 마이페이지 - 예약 취소 요청 내역</title>
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
</style>
<%
String userid=(String)session.getAttribute("sid");
%>
</head>
<body>
<%@include file="../../header.jsp" %>
 	<nav id="menu">
        <ul class="list">
             <li><a href="/binzip/mypage/guestmypage/guestMyPage.jsp">개인정보</a></li>
             <li><a href="/binzip/mypage/guestmypage/guestReservationList.jsp">예약현황</a></li>
             <li><a href="/binzip/mypage/guestmypage/guestCancelRequest.jsp">예약취소 요청내역</a></li>
             <li><a href="/binzip/member/logout.jsp">로그아웃</a></li>
         </ul>
    </nav>
<section>
	<div>
		<h2>CANCEL REQUEST</h2>
		<h4>예약 취소 요청 내역</h4><hr>
		<h5>호스트가 승인하면 자동으로 내역이 삭제됩니다 :)</h5>
	</div>
		<%
		ArrayList<GuestReserveDTO> arr=guestmypagereservedao.gPrintCancelRequest(userid);		
		if(arr==null||arr.size()==0||arr.get(0).getZipname()==""){
			%>
			<div class="info">
				<h2>취소 요청 내역이 없습니다.</h2>
			</div>
			<%
		}else{
			%>
			<div>
				<table>
					<thead>
						<tr>
							<th>게시번호</th>
							<th>ZIP이름</th>
							<th>체크인</th>
							<th>체크아웃</th>
							<th>인원</th>
							<th>가격</th>
						</tr>
					</thead>
					<tbody>
						<%
						for(int i=0;i<arr.size();i++){
							%>
							<tr>
								<td><%=arr.get(i).getBbsidx() %></td>
								<td><%=arr.get(i).getZipname() %></td>
								<td><%=arr.get(i).getReserve_startdate() %></td>
								<td><%=arr.get(i).getReserve_enddate() %></td>
								<td><%=arr.get(i).getPeoplenum() %></td>
								<td><%=arr.get(i).getCost() %></td>
							</tr>
							<%
						}
						%>
					</tbody>
				</table>
			</div>
			<%
		}
		%>
</section>
<%@include file="../../footer.jsp" %>
</body>
</html>