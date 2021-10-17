<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.mypage.guest.*" %>
<jsp:useBean id="gdao" class="binzip.mypage.guest.GuestDAO"></jsp:useBean>
<%
String userid=(String)session.getAttribute("sid");
GuestDTO dto=gdao.guestUpdateForm(userid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반회원 마이페이지- 회원 탈퇴</title>
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
    <form name="exitmember" action="exitmember_ok.jsp?id=<%=sid %>">
    <input type="hidden" name="id" value="<%= sid %>">
	<div>
		<h2>EXIT MEMBER</h2>
		<h4>회원 탈퇴</h4><hr>
	</div>
	<div class="info">
		<h4>탈퇴 안내</h4>
		<h6>탈퇴 신청하기 전에 안내 사항을 꼭 확인해주세요</h6>
	<table>
		<tr>
			<td>사용하고 계신 아이디 <%=dto.getId()%> 는 탈퇴 할 경우 재사용 및 복구가 불가능합니다</td>
		</tr>
		<tr>
			<td>이름,아이디,비밀번호는 재사용이 불가능하며 신중하게 선택해주시기 바랍니다</td>
		</tr>
	</table><br>
	</div>
	<div class="bt01"><input type="submit" value="탈퇴하기"></div>
	</form>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>