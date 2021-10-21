<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.mypage.*" %>
<jsp:useBean id="hostmypagedao" class="binzip.mypage.InfoDAO"></jsp:useBean>
<%
String userid=(String)session.getAttribute("sid");
InfoDTO dto=hostmypagedao.hostInfo(userid);
InfoDTO bankdto=hostmypagedao.hostBankInfo(userid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호스트 마이페이지</title>
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
	margin-top: 120px;
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
</head>
<script>
function popupPhonecheck(){
	window.open('/binzip/member/phoneCheck.jsp','phonecheck','width=450,height=250, left=800, top=300');
}
</script>
<body>
<%@include file="../../header.jsp" %>
 	<nav id="menu">
        <ul class="list">
             <li><a href="/binzip/mypage/hostmypage/hostMyPage.jsp" style="color: #000000;">개인정보</a></li>
             <li><a href="/binzip/mypage/hostmypage/hostReservationList.jsp">예약현황</a></li>
             <li><a href="/binzip/mypage/hostmypage/hostPastReservationList.jsp">지난 예약 내역</a></li>
             <li><a href="/binzip/mypage/hostmypage/cancelRequest.jsp">취소 요청 내역</a></li>
             <li><a href="/binzip/mypage/hostmypage/myZipUploaded.jsp">내가 올린 집</a></li>
             <li><a href="/binzip/member/logout.jsp">로그아웃</a></li>
         </ul>
    </nav>
<section style="margin-top: 140px;">
	<article>
		<h2>MY PAGE</h2>
		<h4>내 정보 보기</h4>
	</article>
	<article>
		<form name="join" action="hostMyPage_ok.jsp">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" value="<%=userid %>" readonly></td>
				</tr>
				<tr>
					<td>질문</td>
					<td><input type="text" name="question" value=<%=dto.getQuestion().replaceAll(" ", "&nbsp;") %>></td>
				</tr>
				<tr>
			  		<td>질문 답변</td>
			  		<td><input type="text" name="answer" value=<%=dto.getAnswer() %>></td>	
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value=<%=dto.getName() %>></td>
				</tr>
				<tr>
					<td class="tx01">생년월일</td>			
					<td><input type="text" name="birthdate" id="txsize" minlength="4" maxlength="16" value=<%=dto.getBirthdate() %> readonly></td>
				</tr>
				<tr>
					<td>핸드폰</td>
					<td><input type="text" name="phone" value=<%=dto.getPhone() %> readonly></td>
					<td><input type="button" value="중복확인" class="btjoin" onclick="popupPhonecheck();"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" value=<%=dto.getEmail() %> readonly></td>
				</tr>
				<%
				if(bankdto==null||(bankdto.getBank()==null||bankdto.getBank()=="")||(bankdto.getAcnumber()==null||bankdto.getAcnumber()=="")){
					%>
					<tr>
						<td>은행명</td>
						<td><input type="text" name="bank"></td>
					</tr>
					<tr>
						<td>계좌번호</td>
						<td><input type="text" name="acnumber"></td>
					</tr>
					<%
				}else{
					%>
					<tr>
						<td>은행명</td>
						<td><input type="text" name="bank" value=<%=bankdto.getBank() %>></td>
					</tr>
					<tr>
						<td>계좌번호</td>
						<td><input type="text" name="acnumber" value=<%=bankdto.getAcnumber() %>></td>
					</tr>
					<%
				}
				%>
			</table>
			<br>
			<div style="text-align: center;">
			<input type="submit" class="btjoin" value="정보수정하기">
			</div>
			<br>
		</form>
		<div style="text-align: center;">
		<input type="button" value="탈퇴하기" class="btjoin" onclick="location.href='bridgeDeleteMember.jsp'">
		</div>
	</article>
</section>
<%@include file="../../footer.jsp" %>
</body>
</html>