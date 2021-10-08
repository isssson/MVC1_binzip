<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.memberDAO"/>
<%
String userphone=request.getParameter("userphone");
boolean result=mdao.phoneCheck(userphone);
if(result){
	%>
	<script>
	window.alert('이미 등록되어있는 전화번호입니다');
	location.href='phoneCheck.jsp';
	</script>
	<%
}else{
	%>
	<script>
	window.alert('<%= userphone %>는 사용가능한 전화번호입니다');
	opener.document.join.phone.value='<%= userphone %>';
	window.self.close();
	</script>
	<%
}
%>