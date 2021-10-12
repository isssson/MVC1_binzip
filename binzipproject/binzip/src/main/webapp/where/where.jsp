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
request.setCharacterEncoding("utf-8");
session.setAttribute("si_do", request.getParameter("si_do"));
String si_do = request.getParameter("si_do");
%>
<script>
	function selectVal(){
		var sido = document.all.selectRegion.value; 
		location.href="/binzip/where/where.jsp?si_do="+sido;
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
	<form name="setRegion" action="/binzip/findzip/findZip.jsp" method="post">
		<table>
			<tr>
				<td>
					<select name="selectRegion" onchange="selectVal();">
						<%
						String str1="";
						String str2=null;
						ArrayList<String>
						if(){
							
						}else{
							%>
							<option value="" selected>시/도</option>
							<%	
						}
						%>
						
						<%
						ArrayList<String> si=binzipaddrdao.whereSi();
						for(int i=0;i<si.size();i++){
							%>
							<option value="<%=si.get(i)%>"><%=si.get(i) %></option>
							<%
						}
						%>
					</select>
				<td>
					<span class="sp-bold">&nbsp;시.도</span>
				</td>
			<tr>
				<td>
					<select name="selectSiGunGu">
						<option value="" selected>시/군/구</option>
						<%
						ArrayList<String> gun = binzipaddrdao.whereSiGunGu(si_do);
						for(int j=0;j<gun.size();j++){
							%>
							<option value="<%=gun.get(j)%>"><%=gun.get(j)%></option>
							<%
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
			<tr>
				<td>
					<span class="sp-bold">체크인&nbsp;</span>
				</td>
				<%
				Calendar myDate=Calendar.getInstance();
				int year=myDate.get(Calendar.YEAR);
				int month=myDate.get(Calendar.MONTH)+1;
				int date=myDate.get(Calendar.DATE);
				%>
				<td>
					<select name="startYear">
					<%
					for(int i=year;i<year+21;i++){
						if(i==year){
							%>
							<option value=<%=i %> selected><%=i %>년</option>
							<%
						}else{
							%>
							<option value=<%=i %>><%=i %>년</option>
							<%
						}
					}
					%>
					</select>
					&nbsp;
					<select name="startMonth">
					<%
					for(int j=1;j<13;j++){
						if(j==month){
							%>
							<option value=<%=j %> selected><%=j %>월</option>
							<%
						}else{
							%>
							<option value=<%=j %>><%=j %>월</option>
							<%
						}
					}
					%>
					</select>
					&nbsp;
					<select name="startDate">
					<%
					for(int k=1;k<32;k++){
						if(k==date){
							%>
							<option value=<%=k %> selected><%=k %>일</option>
							<%
						}else{
							%>
							<option value=<%=k %>><%=k %>일</option>
							<%
						}
					}
					%>	
					</select>
				</td>
			</tr>
			<br>
			<tr>
				<td>
					<span class="sp-bold">체크아웃&nbsp;</span>
				</td>
				<td>
					<select name="endYear">
					<%
					for(int i=year;i<year+21;i++){
						if(i==year){
							%>
							<option value=<%=i %> selected><%=i %>년</option>
							<%
						}else{
							%>
							<option value=<%=i %>><%=i %>년</option>
							<%
						}
					}
					%>
					</select>
					&nbsp;
					<select name="endMonth">
					<%
					for(int j=1;j<13;j++){
						if(j==month){
							%>
							<option value=<%=j %> selected><%=j %>월</option>
							<%
						}else{
							%>
							<option value=<%=j %>><%=j %>월</option>
							<%
						}
					}
					%>
					</select>
					&nbsp;
					<select name="endDate">
					<%
					for(int k=1;k<32;k++){
						if(k==date){
							%>
							<option value=<%=k %> selected><%=k %>일</option>
							<%
						}else{
							%>
							<option value=<%=k %>><%=k %>일</option>
							<%
						}
					}
					%>
					</select>
				</td>
			</tr>
		</table>
		<input type="submit" value="search">
	</form>
</body>
</html>