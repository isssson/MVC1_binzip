<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>    
<%@ page import="binzip.member.*" %>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>   
<jsp:useBean id="mdto" class="binzip.member.MemberDTO"></jsp:useBean>
 
<%
	request.setCharacterEncoding("utf-8");

	String userid = request.getParameter("userid");
	String userpwd = request.getParameter("userpwd");
	String saveid = request.getParameter("saveid");
	
	int result = mdao.loginCheck(userid, userpwd);
	ArrayList<MemberDTO> arr = mdao.getUserInfo(userid);
	String sname = "";
	int grade = 0;
	
	for (int i = 0; i < arr.size(); i++) {
		sname = arr.get(i).getName();
		grade = arr.get(i).getGrade();
	}
	
	String sgrade = Integer.toString(grade);
	
	if(result == mdao.LOGIN_OK) {
		session.setAttribute("sid", userid);
		session.setAttribute("sname", sname);
		session.setAttribute("sgrade", sgrade);
		
		if(saveid == null) {
			Cookie ck = new Cookie("saveid", userid);
			ck.setMaxAge(0);
			response.addCookie(ck);
		}else {
			Cookie ck = new Cookie("saveid", userid);
			ck.setMaxAge(60*60*24*30);
			response.addCookie(ck);
		}
		
		%>
		<script>
			window.alert('<%= sname %>님 환영합니다.');
			opener.location.reload();
			window.self.close();
			opener.location.href = '/binzip/index.jsp'
		</script>
		<%
	}else if(result == mdao.NOT_ID || result == mdao.NOT_PWD) {
		%>
		<script>
			window.alert('아이디 또는 비밀번호가 잘못되었습니다.');
			location.href = 'login.jsp';
		</script>
		<%
	}else if(result == mdao.ERROR) {
		%>
		<script>
			alert('예상치 못한 오류가 발생하였습니다.');
			history.back();
		</script>
		<%
	}
%>