<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.hostmypage.*" %>
<jsp:useBean id="hostmypagedao" class="binzip.hostmypage.HostDAO"></jsp:useBean>
<%
String userid=(String)session.getAttribute("sid");
HostDTO dto=hostmypagedao.hostInfo(userid);
System.out.println(userid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
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
             <li><a href="../mypage_host/last reservation.jsp">지난 예약현황</a></li>
             <li><a href="../mypage_host/cancelReservation.jsp">취소 요청 내역</a></li>
             <li><a href="../mypage_host/hosting_my_zip.jsp">내가 올린 집</a></li>
             <li><a href="../mypage_host/total_Sales_host.jsp">총 매출</a></li>
             <li><a href="../mypage_host/myq&a_host.jsp">나의 문의 내역</a></li>
             <li><a href="../mypage_host/bookmark_host.jsp">관심ZIP</a></li>
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
				if(!(dto.getBank()==null||dto.getBank()=="")){
					%>
					<tr>
						<td>은행명</td>
						<td><input type="text" name="bank" value=<%=dto.getBank() %>></td>
					</tr>
					<tr>
						<td>계좌번호</td>
						<td><input type="text" name="acnumber" value=<%=dto.getAcnumber() %>></td>
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