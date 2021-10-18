<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="binzip.mypage.reserve.*" %>
<jsp:useBean id="guestmypagereservedao" class="binzip.mypage.reserve.GuestReserveDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게스트 마이페이지- 나의 예약 현황</title>
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
		<h2>MY RESERVATION</h2>
		<h4>나의 예약 현황</h4><hr>
	</div>
	<%
	ArrayList<GuestReserveDTO> arr=guestmypagereservedao.reserveInfo(userid);
	if(arr==null||arr.size()==0||arr.get(0).getZipname()==null){
		%>
		<div class="info">
			<h3>예약 내역이 없습니다.</h3>
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
						<h4><%=arr.get(i).getZiptype() %> /  <%=arr.get(i).getZipaddr() %></h4>
						<h4>check in:<%=arr.get(i).getReserve_startdate()%></h4>
						<h4>check out:<%=arr.get(i).getReserve_enddate()%></h4>
						<h4>예약 인원 :  <%=arr.get(i).getPeoplenum() %> 명</h4>
						<h2>&#8361;<%=arr.get(i).getCost() %></h2>
						<%
						if(arr.get(i).getStatus()==0){
							%>
							<span>입금대기</span>
							<input type="button" value="예약 정보 확인" onclick="location.href='/binzip/mypage/guestmypage/showInfo.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							<input type="button" value="예약 취소 요청" onclick="location.href='/binzip/mypage/guestmypage/guestReservationList_ok.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							<%
						}else if(arr.get(i).getStatus()==1){
							%>
							<span>입금완료</span>
							<input type="button" value="예약 정보 확인" onclick="location.href='/binzip/mypage/guestmypage/showInfo.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							<input type="button" value="예약 취소 요청" onclick="location.href='/binzip/mypage/guestmypage/guestReservationList_ok.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							<%
						}else if(arr.get(i).getStatus()==2){
							%>
							<span>숙박중</span>
							<input type="button" value="내역 보기" onclick="location.href='/binzip/mypage/guestmypage/showInfo.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							<%
						}else{
							%>
							<span>만료</span>
							<input type="button" value="내역 보기" onclick="location.href='/binzip/mypage/guestmypage/showInfo.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							<input type="button" value="삭제" onclick="location.href='/binzip/mypage/guestmypage/guestListDelete_ok.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							<%
						}
						%>
					</div>
				</div>
				<hr>
			<%
		}
	}
	%>
	<div>
		
	</div>
</section>
<%@include file="../../footer.jsp" %>
</body>
</html>
