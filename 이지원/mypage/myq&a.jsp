<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.mypage.guest.help.*" %>
<jsp:useBean id="gdao" class="binzip.mypage.guest.help.GuestHelpDAO"></jsp:useBean>
<%
String userid=(String)session.getAttribute("sid");
System.out.println(userid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반회원 마이페이지- 내 문의 내역 보기</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<style>
.list{
	list-style: none;
}
ul{
	text-align: left;
	background-color: lightgray;
}
li{
	float: left;
}
#menu{
	width:1200px;
	height: 150px;
}
#menu ul li{
	float: left;
	width:8%;
	line-height: 45px;
	text-align: center;
	background: lightgray;
}
#menu ul li a{
 	display: block;
}
#menu ul li a:hover{
	background: gray;
	color: black;
}
h2{
	font-size: 40px;
	text-align: center;
	margin-top: 80px;
	clear: both;
}
h4{
	font-size: 20px;
	text-align: center;
	margin-bottom: 50px;
}
table{
	margin: 0px auto;
	width: 600px;	
	height: 550px;
}

</style>
</head>
<body>
<%@include file="../header.jsp" %>
<section>
	<nav id="menu">
        <ul class="list">
             <li><a href="../mypage/mypage.jsp">개인정보</a></li>
             <li><a href="../mypage/myreservation.jsp">예약현황</a></li>
             <li><a href="../mypage/myrescancel.jsp">취소 내역</a></li>
             <li><a href="../mypage/myq&a.jsp">문의 내역</a></li>
             <li><a href="../mypage/bookmark.jsp">관심ZIP</a></li>
         </ul>
    </nav>
    <article>
		<h2>MY PAGE</h2>
		<h4>내 정보 보기</h4><hr>
		<%
		ArrayList<GuestHelpDTO>arr=gdao.helpList(userid);
		if(arr==null||arr.size()==0||arr.get(0).getSubject()==null){
			%>
		<%}else{
			for(int i=0;i<arr.size();i++){
		%>
    	<table>
    		<tr>
    			<td>번호</td>
    			<td>제목</td>
    			<td>날짜</td>
    			<td>조회수</td>
    		</tr>
    		<tr>
    			<td><%=arr.get(i).getIdx() %></td>
    			<td><%=arr.get(i).getSubject() %></td>
    			<td><%=arr.get(i).getWritedate() %></td>
    			<td><%=arr.get(i).getReadnum() %></td>
    		</tr>
    	</table>
    	<%
			}
		}
    	%>
    </article>
</section>
<%@include file="../footer.jsp" %>
</body>
</html>