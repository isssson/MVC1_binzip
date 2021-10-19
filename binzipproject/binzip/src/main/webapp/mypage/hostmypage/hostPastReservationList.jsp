<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.mypage.reserve.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="hostmypagereservedao" class="binzip.mypage.reserve.HostReserveDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지- 지난 예약 현황</title>
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
.myButton {
  	background-color:#000000;
  	border-radius:30px;
  	border:1px solid #000000;
  	cursor:pointer;
  	color:#ffffff;
  	font-family:Arial;
  	font-size:14px;
  	padding:6px 19px;
  	text-decoration:none;
  	margin-top: 15px;
  	margin-bottom: 18px;
}
.myButton:hover {
 	background-color:#ffffff;
 	color:#000000;
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
             <li><a href="/binzip/mypage/hostmypage/hostMyPage.jsp">개인정보</a></li>
             <li><a href="/binzip/mypage/hostmypage/hostReservationList.jsp">예약현황</a></li>
             <li><a href="/binzip/mypage/hostmypage/hostPastReservationList.jsp">지난 예약내역</a></li>
             <li><a href="/binzip/mypage/hostmypage/cancelRequest.jsp">취소 요청내역</a></li>
             <li><a href="/binzip/mypage/hostmypage/myZipUploaded.jsp">내가 올린 집</a></li>
             <li><a href="/binzip/member/logout.jsp">로그아웃</a></li>
         </ul>
    </nav>
<section>
	<div>
		<h2>PAST RESERVATION</h2>
		<h4>지난 예약 내역</h4><hr>
	</div>
		<%
		ArrayList<HostReserveDTO> arr=hostmypagereservedao.reserveInfo(userid);
		ArrayList<HostReserveDTO> arr2=hostmypagereservedao.pastReservation(userid);		
		if(arr==null||arr.size()==0||arr.get(0).getZipname()==null){
			%>
			<div class="info">
				<h2>업로드한 집이 없어요 :(</h2>
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
							<th>예약날짜</th>
							<th>아이디</th>
							<th>상태</th>
							<th>삭제</th>
						</tr>
					</thead>
					<tbody>
						<%
						for(int i=0;i<arr2.size();i++){
							if(arr2==null||arr2.get(i).getId()==null||arr2.get(i).getId()==""){
								%>
								<tr>
									<td colspan="6" align="center">지난 예약 내역이 없습니다.</td>
								</tr>
								<%
							}else{
								%>
								<tr>
									<td><%=arr2.get(i).getBbsidx() %></td>
									<td><%=arr2.get(i).getZipname() %></td>
									<td><%=arr2.get(i).getReserver_startdate().substring(0, 11) %> ~ <%=arr2.get(i).getReserver_enddate().substring(0, 11) %></td>
									<td><%=arr2.get(i).getId() %></td>
									<td>정상 종료</td>
									<td><input type="button" value="내역삭제" class="myButton" onclick="location.href='/binzip/mypage/hostmypage/deleteData_ok.jsp?sdate=<%=arr2.get(i).getReserver_startdate() %>&gId=<%=arr2.get(i).getId()%>&bbsidx=<%=arr2.get(i).getBbsidx()%>'"></td>
								</tr>
								<%
							}
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
















