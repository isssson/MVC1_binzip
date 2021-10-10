<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>

<%
String agreement_cb1 = request.getParameter("agreement2_cb1");
String agreement_cb2 = request.getParameter("agreement2_cb2");
String agreement_cb3 = request.getParameter("agreement2_cb3");
String agreement_cb4 = request.getParameter("agreement2_cb4");

String sid = (String)session.getAttribute("sid");

if(agreement_cb1 == null || agreement_cb2 == null || agreement_cb3 == null || agreement_cb4 == null) {
%>
<script type="text/javascript">
window.alert('모든 체크박스에 동의해주세요.');
location.href = 'beAHost_next.jsp';
</script>
<%
} else {
		int result = mdao.gradeUpdate(sid);
		String msg = result > 0 ? "BINZIP의 호스트가 되신 것을 축하합니다. 다시 로그인 해주세요." : "고객센터로 문의 바랍니다.";
%>
		<script type="text/javascript">
		window.alert('<%= msg %>');
		location.href = '/binzip/index.jsp'
		</script>
		<%
		}
		session.invalidate();
		%>