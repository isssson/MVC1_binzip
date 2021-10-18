<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.hostmypage.*" %>
<jsp:useBean id="hostmypagedao" class="binzip.hostmypage.HostDAO"></jsp:useBean>
<%
String userid=(String)session.getAttribute("sid");
HostDTO dto=hostmypagedao.hostInfo(userid);
HostDTO bankdto=hostmypagedao.hostBankInfo(userid);
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
             <li><a href="/binzip/mypage/hostmypage/hostMyPage.jsp">개인정보</a></li>
             <li><a href="/binzip/mypage/hostmypage/hostReservationList.jsp">예약현황</a></li>
             <li><a href="/binzip/mypage/hostmypage/hostPastReservationList.jsp">지난 예약 내역</a></li>
             <li><a href="/binzip/mypage/hostmypage/cancleRequest.jsp">취소 요청 내역</a></li>
             <li><a href="/binzip/mypage/hostmypage/myZipUploaded.jsp">내가 올린 집</a></li>
             <li><a href="/binzip/member/logout.jsp">로그아웃</a></li>
         </ul>
    </nav>
<section>
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
					<td><input type="email" name="email" value=<%=dto.getEmail() %>></td>
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
			<input type="submit" value="정보수정하기">
		</form>
		<input type="button" value="탈퇴하기" class="btjoin" onclick="location.href='bridgeDeleteMember.jsp'">
	</article>
</section>
<%@include file="../../footer.jsp" %>
</body>
</html>