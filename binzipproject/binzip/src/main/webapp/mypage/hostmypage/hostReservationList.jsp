<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.hostmypage.reserve.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="hostmypagereservedao" class="binzip.hostmypage.reserve.HostReserveDAO"></jsp:useBean>
<jsp:useBean id="hostmypagereservedto" class="binzip.hostmypage.reserve.HostReserveDTO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 나의 예약 현황</title>
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
String userid=(String)session.getAttribute("sid");
System.out.println(userid);
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
	
		<%
		ArrayList<HostReserveDTO> arr=hostmypagereservedao.reserveInfo(userid);
		if(arr==null||arr.size()==0||arr.get(0).getZipname()==null){
			%>
			<div class="info">
				<h3>업로드한 집이 없습니다.</h3>
			</div>
			<%
		}else{
			for(int i=0;i<arr.size();i++){
				%>
				<div class="info">
					<div class="zipres">
						<img src="/binzip/img/main_imgs/test_img_square.jpg" alt="추천집이미지">
					</div>
					<div class="info2">
						<h3> <%=arr.get(i).getZipname() %></h3>
						<h3> <%=arr.get(i).getZiptype() %> /  <%=arr.get(i).getZipaddr() %></h3>
						<h3>예약최대인원 :  <%=arr.get(i).getPeoplenum() %> 명</h3>
						<h3>가격: <%=arr.get(i).getCost() %></h3>
						<input type="button" value="내가 올린 집으로 가기" onclick='location.href="/binzip/mypage/hostmypage/myZipUploaded.jsp"'>
					</div>
				</div>
				<hr>
				<%
			}
		}
		%>	
		<div>
			<table>
				<tr>
					<td>예약날짜</td>
					<td>아이디</td>
					<td>입금상태</td>
					<td>예약취소</td>
				</tr>
				<%
				ArrayList<HostReserveDTO> arr2=hostmypagereservedao.reserveInfo2(userid);
				if(arr2==null||arr2.size()==0||arr2.get(0).getReserver_startdate()==null){
					%>
					<tr>
						<td colspan="4" align="center"><h2>예약내역이 없습니다.</h2></td>	
					</tr>
					<%
				}else{
					for(int i=0;i<arr.size();i++){
						%>
						<tr>
							<td><%=arr2.get(i).getReserver_startdate() %> ~ <%=arr2.get(i).getReserver_enddate() %></td>
							<td><a href="/binzip/mypage/hostmypage/moreInfo.jsp?bbsidx=<%=arr2.get(i).getBbsidx() %>"><%=arr2.get(i).getId() %></a></td>
							<%
							if(arr2.get(i).getStatus()==0){
								%>
								<td><input type="button" value="입금확인" onclick="location.href='/binzip/mypage/hostmypage/payCheck_ok.jsp?bbsidx=<%=arr2.get(i).getBbsidx() %>'"></td>
								<%
							}else if(arr2.get(i).getStatus()==1){
								%>
								<td><input type="button" value="만료" onclick="location.href='/binzip/mypage/hostmypage/payCheck_ok.jsp?bbsidx=<%=arr2.get(i).getBbsidx() %>'"></td>
								<%	
							}else{
								%>
								<td>예약만료</td>
								<%
							}
							%>
							<td><input type="button" value="예약취소" onclick="location.href='/binzip/mypage/hostmypage/cancelReservation_ok.jsp'"></td>
						</tr>
						<%
						
					}
				}
				%>
			</table>
		</div>
</section>
<%@include file="../../footer.jsp" %>
</body>
</html>