<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdto" class="binzip.member.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="mdto"/>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>

<%
int result=mdao.MemberJoin(mdto);
String msg=result>0?"회원가입 성공":"회원가입 실패";
%>
<script>
window.alert('<%=msg%>');
location.href='/binzip/index.jsp';
</script>