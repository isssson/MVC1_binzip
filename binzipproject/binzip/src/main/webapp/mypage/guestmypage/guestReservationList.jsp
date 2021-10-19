<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.*"%>
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
 	text-decoration: none;
}
#menu ul li a:visited{
 	color: black; 	
}
#menu ul li a:hover{
	color: white;
}
h2{
	font-size: 40px;
	text-align: center;
	margin-top: 10px;
	clear: both;
}
h4{
	font-size: 20px;
	text-align: center;
	margin-bottom: 10px;
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
.gusetBt {
	background-color:#000000;
	border-radius:18px;
	border:1px solid #000000;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:12px;
	padding:5px 22px;
	text-decoration:none;
	margin-bottom: 20px;
}
.gusetBt:hover {
	background-color:#ffffff;
	color:#000000;
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
		<h5>호스트가 예약 취소를 하면 자동으로 삭제해요 :)</h5>
	</div>
	<% 
	ArrayList<GuestReserveDTO> arr = guestmypagereservedao.reserveInfo(userid);
	if(arr == null || arr.size() == 0 || arr.get(0).getZipname() == null) {
		%> 
 		<div class="info">
			<h2>예약 내역이 없어요 :(</h2>
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
						<h2><a href='/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getBbsidx()%>'><%=arr.get(i).getZipname() %></a></h2>
						<h4><%=arr.get(i).getZiptype() %> /  <%=arr.get(i).getZipaddr() %></h4>
						<h4>check in:<%=(arr.get(i).getReserve_startdate()).substring(0,11)%></h4>
						<h4>check out:<%=(arr.get(i).getReserve_enddate()).substring(0,11)%></h4>
						<h4>예약 인원 :  <%=arr.get(i).getPeoplenum() %> 명</h4>
						<h2>&#8361;<%= dfCost %></h2>
						<%
						if(arr.get(i).getStatus()==0){
							
							%>
							<div>
							<span>입금대기</span>
							<input type="button" value="예약 정보 확인" class="btjoin" onclick="location.href='/binzip/mypage/guestmypage/showInfo.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							<input type="button" value="예약 취소 요청" class="btjoin" onclick="location.href='/binzip/mypage/guestmypage/guestReservationList_ok.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							</div>
							<%
						}else if(arr.get(i).getStatus()==1){
							
							%>
							<div>
							<span>입금완료</span>
							<input type="button" value="예약 정보 확인" class="btjoin" onclick="location.href='/binzip/mypage/guestmypage/showInfo.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							<input type="button" value="예약 취소 요청" class="btjoin" onclick="location.href='/binzip/mypage/guestmypage/guestReservationList_ok.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							</div>
							<%
						}else if(arr.get(i).getStatus()==2){
							
							%>
							<div>
							<span>숙박중</span>
							<input type="button" value="내역 보기" class="btjoin" onclick="location.href='/binzip/mypage/guestmypage/showInfo.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							</div>
							<%
						}else{
							
							%>
							<div>
							<span>만료</span>
							<input type="button" value="내역 보기" class="btjoin" onclick="location.href='/binzip/mypage/guestmypage/showInfo.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							<input type="button" value="삭제" class="btjoin" onclick="location.href='/binzip/mypage/guestmypage/guestListDelete_ok.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>&sdate=<%=arr.get(i).getReserve_startdate()%>&status=<%=arr.get(i).getStatus()%>'">
							</div>
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
