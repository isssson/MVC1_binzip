<%@page import="javax.swing.text.Document"%>
<%@page import="binzip.where.WhereDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<jsp:useBean id="wdao" class="binzip.where.WhereDAO"></jsp:useBean>
<jsp:useBean id="wdto" class="binzip.where.WhereDTO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
</head>
<style>
.sp-bold{
	font-size: 20px;
	font-weight: bold;
}
</style>
<body>
	<div>
		<h3>어디로 떠날까요?</h3>
		<form name="setRegion" action="/binzip/findzip/findZip.jsp">
			<table>
				<tr>
					<td>
						<select name="region">
							<option value="서울특별시">서울특별시</option>
							<option value="경기도">경기도</option>
							<option value="인천광역시">인천광역시</option>
							<option value="강원도">강원도</option>
							<option value="대전광역시">대전광역시</option>
							<option value="세종특별자치시">세종특별자치시</option>
							<option value="충청북도">충청북도</option>
							<option value="충청남도">충청남도</option>
							<option value="부산광역시">부산광역시</option>
							<option value="대구광역시">대구광역시</option>
							<option value="울산광역시">울산광역시</option>
							<option value="경상북도">경상북도</option>
							<option value="경상남도">경남남도</option>
							<option value="광주광역시">광주광역시</option>
							<option value="전라북도">전라북도</option>
							<option value="전라남도">전라남도</option>
							<option value="제주특별자치도">제주특별자치도</option>
						</select>
					<td>
						<span class="sp-bold">&nbsp;시.도</span>
					</td>
				<tr>
					<td>
						<select name="siGunGu">
							<option>~~구</option>
						</select>
					</td>
					<td>
						<span class="sp-bold">&nbsp;구</span>
					</td>
				</tr>
			</table>
		</form>	
	</div>
	<div>
		<h3>언제 떠날까요?</h3>
		<form name="setDate" action="/binzip/findzip/findZip.jsp">
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
	</div>
</body>
</html>