<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="hostmypagedto" class="binzip.hostmypage.HostDTO"></jsp:useBean>
<jsp:setProperty property="*" name="hostmypagedto"/>
<jsp:useBean id="hostmypagedao" class="binzip.hostmypage.HostDAO"></jsp:useBean>
<%
int result=hostmypagedao.hostUpdate(hostmypagedto);
int result2=hostmypagedao.hostUpdate2(hostmypagedto);
String msg="";
if(result>0&&result2>0){
	msg="정보수정성공";
}else{
	msg="정보수정실패. 고객센터로 문의바랍니다.";
}
%>
<script>
window.alert('<%=msg%>');
location.href='/binzip/index.jsp';
</script>