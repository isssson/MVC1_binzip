<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>
<%
String userphone=request.getParameter("userphone");
boolean result=mdao.phoneCheck(userphone);
if(result){
%>
	<script>
	window.alert('이미 등록되어있는 전화번호 입니다.');
	self.close();
	</script>
	<%
}else{
	%>
	<script>
	window.alert('<%=userphone%>는 확인된 전화번호입니다.');
	opener.document.join.phone.value='<%=userphone%>'; 
	window.self.close();
	</script>
	<%
}
%>