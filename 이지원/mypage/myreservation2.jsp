<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="binzip.mypage.guest.reserve.*" %>
<jsp:useBean id="gdao" class="binzip.mypage.guest.reserve.GuestReserveDAO"></jsp:useBean>
<jsp:useBean id="gdto" class="binzip.mypage.guest.reserve.GuestReserveDTO"></jsp:useBean>
<%
String userid=(String)session.getAttribute("sid");
System.out.println(userid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반회원 마이페이지- 나의 예약보기</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<style>
.list{
	list-style: none;
}
ul{
	text-align: left;
	background-color: lightgray;
}
li{
	float: left;
}
#menu{
	width:1200px;
	height: 150px;
}
#menu ul li{
	float: left;
	width:8%;
	line-height: 45px;
	text-align: center;
	background: lightgray;
}
#menu ul li a{
 	display: block;
}
#menu ul li a:hover{
	background: gray;
	color: black;
}
h3{
	font-size: 40px;
	text-align: center;
	margin-top: 80px;
	clear: both;
}
h5{
	font-size: 20px;
	text-align: center;
	margin-bottom: 50px;
}
.zipres img{
	width: 380px;
	height: auto;
	display: inline-block;
	vertical-align: middle;
}
.info{
	height: auto;
	width: 380px;
	font-size: 10px; 
	content: ''; 
	display: inline-block;
	vertical-align: middle;
}
.info2{
margin-left: 950px;
}
table,tr,td{
margin: 0px auto;
padding-bottom: 20px;
}
.bt01{
	text-align:center;
	display:block;
	margin: 0px auto;
}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
<section>
	<nav id="menu">
        <ul class="list">
             <li><a href="../mypage/mypage.jsp">개인정보</a></li>
             <li><a href="../mypage/myreservation.jsp">예약현황</a></li>
             <li><a href="../mypage/myrescancel.jsp">취소 내역</a></li>
             <li><a href="../mypage/myq&a.jsp">문의 내역</a></li>
             <li><a href="../mypage/bookmark.jsp">관심ZIP</a></li>
         </ul>
    </nav>
	<article>
	<div>
		<div class="text01">
			<h3>MY RESERVATION</h3><br>
			<h5>나의 예약 보기</h5><hr>
		</div>
		<%
		ArrayList<GuestReserveDTO>arr=gdao.reserveInfo(userid);
		if(arr==null||arr.size()==0||arr.get(0).getZipname()==null){
		%>
		<div class="info">
			<h3>예약된 내역이 없습니다.</h3>
		</div>
		<%
		}else{
			for(int i=0;i<arr.size();i++){
		%>
		<div class="zipres">
			<img src="/binzip/img/main_imgs/test_img_square.jpg" alt="추천집이미지">
		</div>
		<div class="info">
		<h2> <%=arr.get(i).getZipname() %></h2>
		<h4> <%=arr.get(i).getZiptype() %> /  <%=arr.get(i).getZipaddr() %></h4>
		<h4>check in: <%=arr.get(i).getReserve_startdate() %>     &nbsp;&nbsp;&nbsp; check out: <%=arr.get(i).getReserve_enddate() %>  </h4>
		<h4>예약인원 :   <%=arr.get(i).getPeoplenum() %>명</h4>
		<h2>가격 <%=arr.get(i).getCost() %></h2>
		<h2><%=arr.get(i).getStatus() %></h2>
		<input type="button" value="예약정보 변경">&nbsp;<input type="button" value="예약취소" onclick="location.href='myrescancel.jsp'">
		</div>
		<div>
		주소: <%=arr.get(i).getZipaddr() %><br>
		호스트 이름: <br>
		호스트 연락처: 010-5656-4545<br>
		체크인 3시 체크아웃 11시/ 반려동물 x / 취사 x<br><br>
		(<%=arr.get(i).getZipname() %> 이미지 클릭시 집 게시물 세부 페이지로 이동합니다.)<hr></div>
		</div>
	<table class="info3">
		<tr>
			<td>집 이름 </td>
			<td><%=arr.get(i).getZipname() %></td>
		</tr>
		<tr>
			<td>체크인 </td>
			<td><%=arr.get(i).getReserve_startdate() %></td>
		</tr>
		<tr>
			<td>체크 아웃</td>
			<td><%=arr.get(i).getReserve_enddate() %></td>
		</tr>
		<tr>
			<td>인원 수 </td>
			<td><%=arr.get(i).getPeoplenum() %></td>
		</tr>
		<tr>
			<td>이름 </td>
			<td><%=arr.get(i).getReserver_name() %></td>
		</tr>
		<tr>
			<td>휴대폰 번호 </td>
			<td><%=arr.get(i).getReserver_phone() %></td>
		</tr>
		<tr>
			<td>입금자명</td>
			<td>홍길동</td>
		</tr>
		<tr>
			<td>가격 </td>
			<td><%=arr.get(i).getCost() %></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><%=arr.get(i).getRequest() %></td>
		</tr>
	</table>
	<div class="bt01"><input type="button" value="홈으로 가기" class="btjoin" onclick="location.href='../index.jsp'">&nbsp;<input type="submit" value="예약 취소하기" class="btjoin" onclick="location.href='/binzip/mypage/myrescancel_ok.jsp'"></div>
	<%
			}
		}
	
	%>
	</article>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>