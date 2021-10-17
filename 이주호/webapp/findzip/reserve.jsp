<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.hosting.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<link rel="stylesheet" type="text/css" href="/binzip/css/btn.css">
<%

%>
<style>
h2{
	text-align: center;
}
fieldset{
	width: 1000px;
	margin: 0px auto;
}
fieldset legend{
	display: none;
}
table{
	eidth: 900px;
	margin: 0px auto;
}
table td{
	padding-left: 20px;
}
</style>

</head>
<body>
<%@include file="/header.jsp" %>
<%
if(sid == null || sid.equals("")){
	%>
	<script>
	window.alert('로그인 후 예약이 가능합니다.');
	location.href='/binzip/findzip/findZip.jsp';
	</script>
	<%		
}

String idx = request.getParameter("idx");
String sdate = request.getParameter("sdate");
String edate = request.getParameter("edate");
String cost = request.getParameter("cost");
%>
<section>
	<article>
		<h2>예 약 하 기</h2>
		<h5>GUEST 정보 입력</h5>
	</article>
	<article>
	<form name="reserve2" action="reserve2.jsp">
	<input type="hidden" name="idx" value="<%=idx %>">
		<fieldset>
			<legend>게스트 정보입력</legend>
			<table>
				<tr>
					<th>체크인</th>
					<td>
						<input type="text" name="reserve_startdate" value="<%=sdate%>" readonly required>
					</td>
				</tr>
				<tr>
					<th>체크아웃</th>
					<td>
						<input type="text" name="reserve_enddate" value="<%=edate%>" readonly required>
					</td>
				</tr>
				<tr>
					<th>예약 인원</th>
					<td>
						<input type="text" name="peoplenum" maxlength = "2" required>
					</td>
				</tr>
				<tr>
					<th>예약자명</th>
					<td>
						<input type="text" name="reserver_name" required>
					</td>
				</tr>
				<tr>
					<th>입금자명</th>
					<td>
						<input type="text" name="payer" required>
					</td>
				</tr>
				<tr>
					<th>예약자 전화번호</th>
					<td>
						<input type="text" name="reserver_phone" required minlength="10" maxlength="11">
					</td>
				</tr>
				<tr>
					<th>은행명</th>
					<td>
						<input type="text" name="reserver_bank" required>
					</td>
				</tr>
				<tr>
					<th>계좌번호</th>
					<td>
						<input type="text" name="reserver_acnumber" required placeholder="취소 시 환불받을 계좌번호를 입력해주세요.">				
					</td>
				</tr>
				<tr>
					<th>비용</th>
					<td>
						<input type="text" name="cost" id="cost" value="<%=cost%>" required readonly>					
					</td>
				</tr>
				<tr>
					<th>요청사항</th>
					<td>
						<textarea rows="8" cols="25" name="request"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="예약 취소하기" class="btjoin" onclick="javascript:location='/binzip/findzip/findZip.jsp';">
						<input type="submit" value="예약하기" class="btnreserve">
					</td>
				</tr>
			</table>
		</fieldset>
		</form>
	</article>	
</section>
<%@include file="/footer.jsp" %>
</body>
</html>