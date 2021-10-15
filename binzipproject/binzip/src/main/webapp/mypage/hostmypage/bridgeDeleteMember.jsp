<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
ul{
	text-align: center;
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
.info{
	text-align: center;
}
table{
	margin: 0px auto;
}
.bt01{
	text-align:center;
	display:block;
	margin: 0px auto;
}
</style>
<script>
function deleteMember(){
	window.open('/binzip/mypage/hostmypage/deleteMember_ok.jsp', 'deletemember', 'width=450, height=250, left=800, top=300');
}
</script>
<%
String userid=(String)session.getAttribute("sid");
%>
</head>
<body>
<%@include file="../../header.jsp" %>
<section>
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
	<div>
		<h2>EXIT MEMBER</h2>
		<h4>회원 탈퇴</h4><hr>
	</div>
	<div class="info">
		<h4>탈퇴 안내</h4>
		<h6>탈퇴 신청하기 전에 안내 사항을 꼭 확인해주세요</h6>
	<table>
		<tr>
			<td>사용하고 계신 아이디 <%=userid %> 는 탈퇴 할 경우 재사용 및 복구가 불가능합니다</td>
		</tr>
		<tr>
			<td>이름,아이디,비밀번호는 재사용이 불가능하며 신중하게 선택해주시기 바랍니다</td>
		</tr>
	</table><br>
	</div>
	<div class="bt01"><input type="button" value="탈퇴하기" onclick='deleteMember();'></div>
</section>
<%@include file="../../footer.jsp" %>
</body>
</html>