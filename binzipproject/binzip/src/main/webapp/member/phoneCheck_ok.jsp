<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>
<%
String userphone=request.getParameter("userphone");
boolean result=mdao.checkId(userphone);
System.out.println(userphone);
if(result){
%>
	<script>
	window.alert('이미 등록되어있는 ID입니다.');
	location.href='idCheck.jsp';
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