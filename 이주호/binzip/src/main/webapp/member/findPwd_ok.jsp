<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>
<%
String question=request.getParameter("question");
String answer=request.getParameter("answer");
String id=request.getParameter("id");
boolean result=mdao.findPwdInfo(question, answer, id);
if(result){
	%>
	<script>
	location.href="/binzip/member/editPwd.jsp?id=<%=id%>";
	</script>
	<%
}else{
	%>
	<script>
	window.alert('존재하지 않는 정보입니다.');
	location.href='/binzip/member/findPwd.jsp';
	</script>
	<%
}
%>