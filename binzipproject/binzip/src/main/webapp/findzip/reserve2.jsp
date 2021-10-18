<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.NumberFormat"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<link rel="stylesheet" type="text/css" href="/binzip/css/btn.css">
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
<%
String sdate = request.getParameter("reserve_startdate"); 
String edate = request.getParameter("reserve_enddate");
String pnum_s = request.getParameter("peoplenum");
String rname = request.getParameter("reserver_name");
String payer = request.getParameter("payer");
String tel = request.getParameter("reserver_phone");
String bank = request.getParameter("reserver_bank");
String acnum = request.getParameter("reserver_acnumber");
String cost_s = request.getParameter("cost");
String req = request.getParameter("request");

String format = "yyyy-MM-dd";

int cost = Integer.parseInt(cost_s);
SimpleDateFormat sdf = new SimpleDateFormat(format);
Date startdate = sdf.parse(sdate);
Date enddate = sdf.parse(edate);

long date = startdate.getTime() - enddate.getTime();
long resultdate = date / (24*60*60*1000);
resultdate = Math.abs(resultdate);
int lastdate = (int)(resultdate);

int totalcost = (cost * lastdate);
%>
</head>
<body>
<%@include file="/header.jsp" %>
<%
String binzip_host_bbs_idx = request.getParameter("idx");
%>
<section>
	<article>
		<h2>예약 정보 확인</h2>
	</article>
	<article>
		<form name="reserve2_ok" action="reserve2_ok.jsp">
		<input type="hidden" name="binzip_member_id" value="<%=sid%>">
		<input type="hidden" name="binzip_host_bbs_idx" value="<%=binzip_host_bbs_idx%>">
		<input type="hidden" name="reserve_startdate" value="<%=sdate%>">
		<input type="hidden" name="reserve_enddate" value="<%=edate%>">		
		<fieldset>
			<legend>예약정보 확인</legend>
			<table>
				<tr>
					<th>예약일</th>
					<td>
						<input type="text" name="checkdate" value="<%=sdate%> ~ <%=edate%>" readonly required>
					</td>
				</tr>				
				<tr>
					<th>예약 인원</th>
					<td>
						<input type="text" name="peoplenum" value="<%=pnum_s%>" maxlength = "2" required readonly>
					</td>
				</tr>
				<tr>
					<th>예약자명</th>
					<td>
						<input type="text" name="reserver_name" value="<%=rname%>" required readonly>
					</td>
				</tr>
				<tr>
					<th>입금자명</th>
					<td>
						<input type="text" name="payer" value="<%=payer%>" required readonly>
					</td>
				</tr>
				<tr>
					<th>예약자 전화번호</th>
					<td>
						<input type="text" name="reserver_phone" value="<%=tel%>" required readonly minlength="10" maxlength="11">
					</td>
				</tr>
				<tr>
					<th>은행명</th>
					<td>
						<input type="text" name="reserver_bank" value="<%=bank%>" readonly required>
					</td>
				</tr>
				<tr>
					<th>계좌번호</th>
					<td>
						<input type="text" name="reserver_acnumber" value="<%=acnum%>" readonly required placeholder="취소 시 환불받을 계좌번호를 입력해주세요.">				
					</td>
				</tr>
				<tr>
					<th>비용</th>
					<td>
						<input type="text" name="cost" id="cost" value="<%=totalcost%>" readonly required readonly>					
					</td>
				</tr>
				<tr>
					<th>요청사항</th>
					<td>
						<textarea rows="8" cols="25" name="request" readonly><%=req%></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="예약 취소하기" class="btjoin" onclick="javascript:location='/binzip/findzip/findZip.jsp';">
						<input type="submit" value="예약완료" class="btnreserve">
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