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
<title>일반회원 마이페이지-내 정보 보기</title>
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
	display: none;
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
table{
	margin: 0px auto;
	width: 600px;	
	height: 550px;
}
.tx01 {
	padding: 10px;
	text-align: left;
	font-size: 20px;
	font-weight: bold;
}
.tx02{
	padding: 5px;
	text-align: left;
	size: 30;	
}
#txsize{
	width: 300px;
	height: 25px;
	font-size: 12px;
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
        <ul class="list" >
             <li><a href="../mypage/mypage.jsp">개인정보</a></li>
             <li><a href="../mypage/myreservation.jsp">예약현황</a></li>
             <li><a href="../mypage/myrescancel.jsp">취소 내역</a></li>
             <li><a href="../mypage/myq&a.jsp">문의 내역</a></li>
             <li><a href="../mypage/bookmark.jsp">관심ZIP</a></li>
         </ul>
    </nav>
	<article>
		<h2>MY PAGE</h2>
		<h4>내 정보 보기</h4>
	</article>
	<article>
	<form name="mypage" action="mypageUpdate_ok.jsp">
		<table>
			<tr>
				<td class="tx01">아이디</td>
				<td class="tx02"><input type="text" id="txsize" name="id" value="<%=dto.getId()%>" ></td>
			</tr>
			<tr>
				<td class="tx01">비밀번호</td>
				<td class="tx02"><input type="password" id="txsize" name="pwd" value="<%=dto.getPwd()%>"></td>
			</tr>
						<tr>
				<td class="tx01">질문</td>
				<td class="tx02"><input type="text" id="txsize" name="question" value="<%=dto.getQuestion().replaceAll(" ", "&nbsp;")%>"></td>
			</tr>
			<tr>
		  		<td class="tx01">질문 답변</td>
		  		<td class="tx02"><input type="text" id="txsize" name="answer" value="<%=dto.getAnswer()%>"></td>	
			</tr>
			<tr>
				<td class="tx01">이름</td>
				<td class="tx02"><input  id="txsize" name="name" value="<%=dto.getName()%>"></td>
			</tr>
			<tr>
				<td class="tx01">생년월일</td>			
				<td><input type="text" name="birthdate" id="txsize" minlength="4" maxlength="16" name="birthdate" value="<%=dto.getBirthdate()%>" ></td>
			</tr>
			<tr>
				<td class="tx01">핸드폰</td>
				<td class="tx02"><input type="text" id="txsize" name="phone" value="<%=dto.getPhone()%>"></td>
			</tr>
			<tr>
				<td class="tx01">이메일</td>
				<td class="tx02"><input type="text" id="txsize" name="email" value="<%=dto.getEmail()%>"></td>
			</tr>
		</table>
		<br>
		<div class="bt01"><input type="submit" value="정보수정하기" >
		<input type="button" value="탈퇴하기" onclick="location.href='exitmember.jsp'"></div>
	</form>
	</article>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>