<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdto" class="binzip.member.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="mdto"/>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>

<%
	int result = mdao.memberJoin(mdto);
	String msg = result > 0 ? "BINZIP의 회원이 되신 것을 축하합니다. 로그인 후 이용해주세요." : "고객센터로 연락바랍니다.";
%>
<script>
	window.alert('<%= msg %>');
	location.href = '/binzip/index.jsp';
</script>