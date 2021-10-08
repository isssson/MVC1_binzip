<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.memberDAO"></jsp:useBean>
<%
request.setCharacterEncoding("utf-8");
String userid=request.getParameter("userid");
String userpwd=request.getParameter("userpwd");
String saveid=request.getParameter("saveid");

System.out.println(userid);
System.out.println(userpwd);

int result=mdao.Logincheck(userid,userpwd);
if(result==mdao.LOGIN_OK){
	String dbname=mdao.getUserInfo(userid);
	session.setAttribute("sid", userid);
	session.setAttribute("sname", dbname);
	
	if(saveid==null){
		Cookie ck=new Cookie("saveid",userid);
		ck.setMaxAge(0);
		response.addCookie(ck);
	}else{
		Cookie ck=new Cookie("saveid",userid);
		ck.setMaxAge(60*60*24);
		response.addCookie(ck);
	}
	
	%>
	<script>
	window.alert('<%=dbname%>님 환영합니다');
	opener.location.reload();
	window.self.close();
	</script>
	<%
}else if(result==mdao.NOT_ID||result==mdao.NOT_PWD){
	%>
	<script>
	window.alert('아이디 또는 비밀번호가 잘못되었습니다');
	location.href='login.jsp'
	</script>
	<%
}else if(result==mdao.ERROR){
	out.println("고객센터 연락바람");
}

%>