<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>    
<%
request.setCharacterEncoding("utf-8");
String userid=request.getParameter("userid");
String userpwd=request.getParameter("userpwd");
String saveid=request.getParameter("saveid");

int result=mdao.loginCheck(userid, userpwd);
if(result==mdao.LOGIN_OK){
	String username=mdao.getUserInfo(userid);
	session.setAttribute("sid", userid);
	session.setAttribute("sname", username);
	
	if(saveid==null){
		Cookie ck=new Cookie("saveid",userid);
		ck.setMaxAge(0);
		response.addCookie(ck);
	}else{
		Cookie ck=new Cookie("saveid",userid);
		ck.setMaxAge(60*60*24*30);
		response.addCookie(ck);
	}
	
	
	%>
	<script>
	window.alert('<%=username%>님 환영합니다.');
	opener.location.reload();
	window.self.close();
	</script>
	<%
}else if(result==mdao.NOT_ID||result==mdao.NOT_PWD){
	%>
	<script>
	window.alert('아이디 또는 비밀번호가 잘못되었습니다.');
	location.href='login.jsp';
	</script>
	<%
}else if(result==mdao.ERROR){
	%>
	<script>
	alert('예상치 못한 오류가 발생하였습니다.');
	history.back();
	</script>
	<%
}
%>