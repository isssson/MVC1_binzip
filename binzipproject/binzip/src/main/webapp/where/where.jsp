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
<%
request.setCharacterEncoding("UTF-8");
String si_do = request.getParameter("si_do");
String si_gun_gu = request.getParameter("si_gun_gu");
String startDate = request.getParameter("startDate");
String endDate = request.getParameter("endDate");
%>
<script>
	function selectVal(){
		var sido = document.all.selectRegion.value;
		var siGunGu = document.all.selectSiGunGu.value;
		var startDate = document.all.cInDate.value;
		var endDate = document.all.cOutDate.value;
		location.href="binzip/findzip/findZip.jsp?si_do="+si_do+"&si_gun_gu="+si_gun_gu+"&startDate="+startDate+"&endDate="+endDate;
	}
	
	function shift(){
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
	<form name="where" action="/binzip/findzip/FindZip.jsp";>
		<table>
			<tr>
				<td>
					<select name="selectRegion" onchange="selectVal();">
						<option value="">시/도</option>
						<%
						ArrayList<String> si = binzipaddrdao.whereSi();
						for(int i=0;i<si.size();i++){
							si_do=si_do+"";
							String temp = si.get(i);
							if(!(si_do.equals(temp))){
								%><option value="<%=si.get(i) %>"><%=si.get(i) %></option><%
							}else{
								%><option value="<%=si.get(i) %>" selected="selected"><%=si.get(i) %></option><%
							}
						}
						%>	
					</select>
				<td>
					<span class="sp-bold">&nbsp;시.도</span>
				</td>
			<tr>
				<td>
					<select name="selectSiGunGu" onchange="selectVal();">
						<option value="">시/군/구</option>
						<%
						ArrayList<String> gun = binzipaddrdao.whereSiGunGu(si_do);
						for(int j=0;j<gun.size();j++){
							si_gun_gu=si_gun_gu+"";
							String temp=gun.get(j);
							if(!(si_gun_gu.equals(temp))){
								%>
								<option value="<%=gun.get(j)%>"><%=gun.get(j)%></option>
								<%
							}else{
								%>
								<option value="<%=gun.get(j)%>" selected><%=gun.get(j)%></option>
								<%
							}
						}
						%>
					</select>
				</td>
				<td>
					<span class="sp-bold">&nbsp;구</span>
				</td>
			</tr>
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
					<input type="date" name="cInDate" min="<%=s_minDate%>" required pattern="\d{4}-\d{2}-\d{2}" value="<%=startDate %>" onchange="selectVal();">
				</td>
			</tr>
			<br>
			<tr>
				<td>
					<span class="sp-bold">체크아웃&nbsp;</span>
				</td>
				<td>
					<input type="date" name="cOutDate" required pattern="\d{4}-\d{2}-\d{2}" value="<%=endDate%>" onchange="selectVal();">
				</td>
			</tr>
		</table>
		<input type="button" value="search" onclick="shift();">
	</form>
</body>
</html>