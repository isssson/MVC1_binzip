<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="beahostdto" class="binzip.beahost.BeAHostDTO"></jsp:useBean>
<jsp:setProperty property="*" name="beahostdto"/>
<jsp:useBean id="beahostdao" class="binzip.beahost.BeAHostDAO"></jsp:useBean>

<%
	String bank = request.getParameter("bank");
	String acnumber = request.getParameter("acnumber");
	
	if(bank == null || bank.equals("") || acnumber == null || acnumber.equals("")) {
		%>
		<script type="text/javascript">
			window.alert('모든 항목을 입력해주세요.');
			location.href = 'beAHost_inputInfo.jsp';
		</script>
		<%
	} else {
		int result = beahostdao.inputHostTable(beahostdto);
		String msg = result > 0 ? "곧 BINZIP의 호스트가 될 수 있어요 :)" : "고객센터로 연락바랍니다.";
		
		%>
		<script type="text/javascript">
			window.alert('<%= msg %>');
			location.href = 'beAHost_next.jsp';
		</script>
		<%
	}
%>