<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.addr.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="binzipaddrdao" class="binzip.addr.Binzip_AddrDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
String si_do=request.getParameter("si_do");
System.out.println("파라미터값 : "+ si_do);
String si_gun_gu=request.getParameter("si_gun_gu");
String workType = request.getParameter("workType");
%>
<script>

	function selectVal(status){
		var sido = document.all.sido.value;
		var sigungu = document.all.sigungu.value;
		var workType = status;
		location.href="/binzip/hosting/addrSearch.jsp?si_do="+sido+"&si_gun_gu="+sigungu+"&workType="+workType;
	}	

</script>
<style>
#addrtext{
	width: 200px;
}
</style>
</head>
<body onload="">
<section>
	<form name="addr_search_div" action="addHosting.jsp">
		<div class="addrsearch">
			<select name="addrsido" id="sido" onchange="javascript:selectVal('getGu');">
				<option value="">시/도</option>
				<%
					ArrayList<String> si = binzipaddrdao.si(workType,"si_do");				
					for(int i = 0;i<si.size();i++){
						System.out.println("파라미터22"+si_do);
						System.out.println(si.get(i));
						System.out.println("");
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
			<select name="addrsigungu" id="sigungu" onchange="selectVal('getRo');">
				<option value="">시/군/구</option>
				<%
					ArrayList<String> gun = binzipaddrdao.gu(workType,si_do);				
					for(int j = 0;j<gun.size();j++){
						si_gun_gu = si_gun_gu+"";
						String temp = gun.get(j);
						if(!(si_gun_gu.equals(temp))){
							%><option value="<%=gun.get(j) %>"><%=gun.get(j) %></option><% 
						}else{
							%><option value="<%=gun.get(j) %>" selected="selected"><%=gun.get(j) %></option><% 
						}
					}				
				%>				
			</select>
			<select name="addrdong" id="dong">
				<option value="">읍/면/동</option>
				<%
					ArrayList<String> ro = binzipaddrdao.ro(workType,si_do,si_gun_gu);
				if(ro != null){
					for(int k = 0;k<ro.size();k++){
							%><option value="<%=ro.get(k) %>"><%=ro.get(k) %></option><% 
						}
					}
				%>
			</select><br>
			<input type="text" name="zipaddr" id="addrtext" placeholder="상세주소">	
			<input type="submit" value="저장하기">			
		</div>
		<div>
			<p class="addr_search_tip">상세주소는 정확하게 입력해주세요.</p>			
		</div>
	</form>
</section>
</body>
</html>















