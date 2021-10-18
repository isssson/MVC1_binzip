<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.mypage.*" %>
<jsp:useBean id="hostmypagedao" class="binzip.mypage.InfoDAO"></jsp:useBean>
<%
String userid=(String)session.getAttribute("sid");
int result=hostmypagedao.memberDel(userid);
String msg="";
if(result>0){
	msg="회원탈퇴 성공";
}else{
	msg="회원탈퇴 실패. 고객센터로 문의바랍니다.";
}
session.invalidate();
%>
<script>
window.alert('<%=msg%>');
opener.document.location.href="/binzip/index.jsp"
self.close();
</script>