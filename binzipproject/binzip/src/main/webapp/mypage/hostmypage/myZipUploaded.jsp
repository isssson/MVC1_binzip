<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.mypage.reserve.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="hostmypagereservedao" class="binzip.mypage.reserve.HostReserveDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지 - 내가 올린 집</title>
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
	width: 1000px;
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
             <li><a href="/binzip/mypage/hostmypage/cancelRequest.jsp">취소 요청 내역</a></li>
             <li><a href="/binzip/mypage/hostmypage/myZipUploaded.jsp" style="color: #000000;">내가 올린 집</a></li>
             <li><a href="/binzip/member/logout.jsp">로그아웃</a></li>
         </ul>
    </nav>
<section style="margin-top: 140px;">
	<div>
		<h2>MY ZIP</h2>
		<h4>내가 등록한 집</h4><hr>
	</div>
		<%
		ArrayList<HostReserveDTO> arr=hostmypagereservedao.reserveInfo(userid);
		if(arr==null||arr.size()==0||arr.get(0).getZipname()==null){
			%>
			<div class="info">
				<h2	>업로드한 집이 없어요 :(</h2>
			</div>
			<%
		}else{
			%>
			<div>
				<table>
					<thead>
						<th>게시번호</th>
						<th>집이름</th>
						<th>집주소</th>
						<th>최대인원</th>
						<th>가격</th>
						<th>집내리기</th>
					</thead>
					<tbody>
					<%
					for(int i=0;i<arr.size();i++){
						%>
						<tr>
							<td><%=arr.get(i).getBbsidx() %></td>
							<td><a href='/binzip/findzip/findzipContent.jsp?idx=<%=arr.get(i).getBbsidx()%>'><%=arr.get(i).getZipname() %></a></td>
							<td><%=arr.get(i).getZipaddr() %></td>
							<td><%=arr.get(i).getPeoplenum() %> 명</td>
							<td>&#8361;<%=arr.get(i).getCost() %></td>
							<td><input type="button" value="집내리기" onclick="location.href='/binzip/mypage/hostmypage/zipClosed_ok.jsp?bbsidx=<%=arr.get(i).getBbsidx()%>'"></td>
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