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
	width:100%;
	height: auto;
    position: relative;
}
#menu ul.list {
    position: absolute;
    right: 10px;
    width: 600px;
    height: 50px;
    text-align: center;
    background: gray;
    border-radius: 35px;
    padding: 0 30px;
}
#menu ul li{
    display: inline-block;
    line-height: 2.5;
    text-align: center;
}
#menu ul li a{
    display: block;
    padding: 5px;
    text-decoration: none;
    color: #fff;
    font-weight: bold;
}
#menu ul li a:hover{
	background: gray;
	color: black;
	font-weight: bold;
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
	width: 700px;
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
             <li><a href="/binzip/mypage/guestmypage/guestCancelRequest.jsp" style="color: #000000;">예약취소 요청내역</a></li>
             <li><a href="/binzip/member/logout.jsp">로그아웃</a></li>
         </ul>
    </nav>
<section style="margin-top: 140px;">
	<div>
		<h2>CANCEL REQUEST</h2>
		<h4>예약 취소 요청 내역</h4><hr>
		<h5>호스트가 승인하면 자동으로 내역을 삭제해요! :)</h5>
	</div>
		<%
		ArrayList<GuestReserveDTO> arr=guestmypagereservedao.gPrintCancelRequest(userid);		
		if(arr==null||arr.size()==0||arr.get(0).getZipname()==""){
			%>
			<div class="info">
				<h2>취소 요청 내역이 없어요! :)</h2>
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
								<td><%=arr.get(i).getReserve_startdate().substring(0, 11) %></td>
								<td><%=arr.get(i).getReserve_enddate().substring(0, 11) %></td>
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