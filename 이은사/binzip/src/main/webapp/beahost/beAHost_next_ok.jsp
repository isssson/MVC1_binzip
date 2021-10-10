<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>    
<%@ page import="binzip.member.*" %>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>   
<jsp:useBean id="mdto" class="binzip.member.MemberDTO"></jsp:useBean>

<%
	String agreement_cb1 = request.getParameter("agreement2_cb1");
	String agreement_cb2 = request.getParameter("agreement2_cb2");
	String agreement_cb3 = request.getParameter("agreement2_cb3");
	String agreement_cb4 = request.getParameter("agreement2_cb4");
	
	String sid = (String)session.getAttribute("sid");
	
	if(agreement_cb1 == null || agreement_cb2 == null 
		|| agreement_cb3 == null || agreement_cb4 == null) {
		%>
		<script type="text/javascript">
			window.alert('모든 체크박스에 동의해주세요.');
			location.href = 'beAHost_next.jsp';
		</script>
		<%
	} else {
		int result = mdao.gradeUpdate(sid);
		
		ArrayList<MemberDTO> arr = mdao.getUserInfo(sid);
		String sname = "";
		int grade = 0;
		
		for (int i = 0; i < arr.size(); i++) {
			sname = arr.get(i).getName();
			grade = arr.get(i).getGrade();
		}
		
		String sgrade = Integer.toString(grade);
		
		session.setAttribute("sid", sid);
		session.setAttribute("sname", sname);
		session.setAttribute("sgrade", sgrade);
		
		String msg = result > 0 ? "님 호스트가 되신 것을 축하합니다." : "고객센터로 문의 바랍니다.";
		%>
		<script type="text/javascript">
			window.alert('<%= sname %><%= msg %>');
			location.href = '/binzip/index.jsp'
		</script>
		<%
	}
%>