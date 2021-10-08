<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mdao" class="binzip.member.MemberDAO"></jsp:useBean>
<%
String question=request.getParameter("question");
String answer=request.getParameter("answer");
String id=request.getParameter("id");

String userid=mdao.findid(name, phone);
String msg="";
if(userid==null){
	msg="일치하는 정보가 없습니다";
}else{
	msg="고객님의 아이디는 '"+userid+"' 입니다.";	
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>