<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>
<%
String pwd=request.getParameter("pwd");
String pwdcheck=request.getParameter("pwdcheck");
String id=request.getParameter("id");

int result=mdao.pwdUpdate(pwd,id);
if(result>0&&pwd.equals(pwdcheck)){
	%>
	<script>
	window.alert('비밀번호 변경 성공');
	location.href='/binzip/index.jsp';
	</script>
	<%
}else{
	%>
	<script>
	window.alert('비밀번호 확인이 일치하지 않습니다.');
	history.back();
	</script>
	<%
}
%>