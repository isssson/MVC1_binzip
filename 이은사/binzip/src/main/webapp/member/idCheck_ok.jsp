<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>
<%
String userid=request.getParameter("userid");
boolean result = mdao.checkId(userid);
System.out.println(userid);
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
		window.alert('<%=userid%>는 사용가능한 ID입니다.');
		opener.document.join.id.value='<%=userid%>'; 
		window.self.close();
	</script>
	<%
}
%>
