<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="binzip.addr.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="binzipaddrdao" class="binzip.addr.Binzip_AddrDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<script>
	function whereNext(){
		var sido=document.all.si_do.value;
		var startDate=document.all.cInDate.value;
		var endDate=document.all.cOutDate.value;
		opener.parent.location.href="/binzip/findzip/findZip.jsp?sido="+sido+"&startDate="+startDate+"&endDate="+endDate+"";
		window.close();
	}
</script>
</head>
<style>
.sp-bold{
	font-size: 20px;
	font-weight: bold;
}
</style>
<body>
	<h3>어디로 떠날까요?</h3>
	<form name="where">
		<table>
			<tr>
				<td>
					<select name="si_do">
						<option value="" selected>시/도</option>
						<%
						ArrayList<String> si = binzipaddrdao.whereSi();
						for(int i=0;i<si.size();i++){
							%><option value="<%=si.get(i) %>"><%=si.get(i) %></option><%
						}
						%>	
					</select>
				</td>	
				<td>
					<span class="sp-bold">&nbsp;시.도</span>
				</td>
		</table>
		<h3>언제 떠날까요?</h3>
		<table>
		<%
		Calendar myDate=Calendar.getInstance();
		int year=myDate.get(Calendar.YEAR);
		int month=myDate.get(Calendar.MONTH)+1;
		int date=myDate.get(Calendar.DATE);
		String s_year=Integer.toString(year);
		String s_month=Integer.toString(month);
		String s_date=Integer.toString(date);
		String s_minDate=s_year+"-"+s_month+"-"+s_date;
		%>
			<tr>
				<td>
					<span class="sp-bold">체크인&nbsp;</span>
				</td>
				<td>
					<input type="date" name="cInDate" min="<%=s_minDate%>" required pattern="\d{4}-\d{2}-\d{2}">
				</td>
			</tr>
			<br>
			<tr>
				<td>
					<span class="sp-bold">체크아웃&nbsp;</span>
				</td>
				<td>
					<input type="date" name="cOutDate" required pattern="\d{4}-\d{2}-\d{2}">
				</td>
			</tr>
		</table>
		<input type="button" value="search" onclick="whereNext();">
	</form>
</body>
</html>