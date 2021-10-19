<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.addr.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="binzipaddrdao" class="binzip.addr.Binzip_AddrDAO" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOSTING</title>
<%
request.setCharacterEncoding("utf-8");
String si_do = request.getParameter("si_do");
String si_gun_gu = request.getParameter("si_gun_gu");
String road_name = request.getParameter("road_name");
String workType = request.getParameter("workType");
String ziptype = request.getParameter("ziptype");
%>
<script>
	function selectVal(status){
		var sido = document.all.addrsido.value;
		var sigungu = document.all.addrsigungu.value;
		var roadname = document.all.addrro.value;
		var workType = status;
		location.href="/binzip/hosting/addrSearch.jsp?si_do="+sido+"&si_gun_gu="+sigungu+"&road_name="+roadname+"&workType="+workType;
	}	
	function finalSelect() {
		var result = document.all.addrsido.value + " "+ document.all.addrsigungu.value + " " + document.all.addrro.value+" "+document.all.de_addr.value;		
		opener.firstAddr.value = result;
		window.close();		
	}
	
</script>
<style>
#addrtext{
	width: 200px;
}
.hostMyButton {
	background-color:#000000;
	border-radius:18px;
	border:1px solid #000000;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:12px;
	padding:5px 22px;
	text-decoration:none;
	margin-top: 20px;
}
.hostMyButton:hover {
	background-color:#ffffff;
	color:#000000;
}
</style>
</head>
<body>
<section>
	<form name="addr_search_div">
	<input type="hidden" name="ziptype" value="<%=ziptype%>">
		<div class="addrsearch">
			<select name="addrsido" onchange="selectVal('getGu');" style="width: 130px;">
				<option value="">시/도</option>
				<%
					ArrayList<String> si = binzipaddrdao.si(workType,"si_do");				
					for(int i = 0;i<si.size();i++){					
						si_do = si_do+"";
						String temp = si.get(i);
						if(!(si_do.equals(temp))){
							%><option value="<%=si.get(i) %>"><%=si.get(i) %></option><% 
						}else{
							%><option value="<%=si.get(i) %>" selected="selected"><%=si.get(i) %></option><% 
						}
					}
				%>
			</select>
			<select name="addrsigungu" onchange="selectVal('getRo');" style="width: 130px;">
				<option value="">시/군/구</option>
				<%
					ArrayList<String> gun = binzipaddrdao.gu(workType,si_do);				
					for(int j = 0;j<gun.size();j++){
						si_gun_gu = si_gun_gu+"";
						String temp = gun.get(j);
						if(!(si_gun_gu.equals(temp))){
							%><option value="<%=gun.get(j) %>">
								<%=gun.get(j) %>
							</option><% 
						}else{
							%><option value="<%=gun.get(j) %>" selected="selected"><%=gun.get(j) %></option><% 
						}
					}				
				%>				
			</select>
			<select name="addrro" style="width: 200px;">
				<option value="">도로명</option>
				<%
					ArrayList<String> road = binzipaddrdao.ro(workType,si_do,si_gun_gu);
										
					for(int k = 0;k<road.size();k++){
						road_name = road_name+"";
						String temp = road.get(k);
						if(!(road_name.equals(temp))){
							%><option value="<%=road.get(k) %>"><%=road.get(k) %></option><%									
						}else{
							%><option value="<%=road.get(k) %>"><%=road.get(k) %></option><%
					}
				}
				%>
			</select><br>
			<input type="text" name="de_addr" placeholder="상세주소를 입력해주세요" size="40">
			<input type="button" value="선택하기" class="hostMyButton" onclick = "finalSelect();">	
		</div>
	</form>
</section>
</body>
</html>















