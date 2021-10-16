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
%>
</head>
<body>
<%@include file="../../header.jsp" %>
	<nav id="menu">
        <ul class="list">
             <li><a href="/binzip/mypage/hostmypage/hostMyPage.jsp">개인정보</a></li>
             <li><a href="/binzip/mypage/hostmypage/hostReservationList.jsp">예약현황</a></li>
             <li><a href="/binzip/mypage/hostmypage/hostPastReservationList.jsp">지난 예약 내역</a></li>
             <li><a href="../mypage_host/cancelReservation.jsp">취소 요청 내역</a></li>
             <li><a href="/binzip/mypage/hostmypage/myZipUploaded.jsp">내가 올린 집</a></li>
             <li><a href="/binzip/member/logout.jsp">로그아웃</a></li>
         </ul>
    </nav>
<section>
	<div>
		<h2>MY ZIP</h2>
		<h4>내가 등록한 집</h4><hr>
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
						<h2><%=arr.get(i).getZipname() %></h2>
						<br>
						<h4><%=arr.get(i).getZipaddr() %></h4>
						<h4>예약최대인원 :  <%=arr.get(i).getPeoplenum() %> 명</h4>
						<h4>&#8361;<%=arr.get(i).getCost() %></h4>
						<input type="button" value="수정하기" onclick='location.href="/binzip/hosting/addHosting.jsp?bbsidx=<%=arr.get(i).getBbsidx() %>"'>
						<input type="button" value="영업종료" onclick='location.href="/binzip/mypage/hostmypage/zipClosed_ok.jsp?bbsidx=<%=arr.get(i).getBbsidx() %>"'>						
					</div>
				</div>
				<br>
				<%
			}
		}
		%>	
</section>
<%@include file="../../footer.jsp" %>
</body>
</html>