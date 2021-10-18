<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="binzip.adminmypage.*" %>
<jsp:useBean id="admindao" class="binzip.adminmypage.AdminDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
<style>
h2, h4{
	text-align: center;
}
legend{
	display: none;
}
table{
	margin: 0px auto;
	margin-top: 50px;
	width: 1000px;
	border-top: 1px solid gray;
	border-bottom: 1px solid gray;
	border-left: 1px solid gray;
	border-right: 1px solid gray;
	text-align: center;
}
table th{
	background-color: lightgray;
}
table caption{
	display: none;
}
</style>
<script>
	function hostDelete(){
		document
		<%
		
		%>
	}
</script>
</head>
<body>
<%@include file="/header.jsp" %>
<section>
	<article>
		<nav>
			<ul>
				<li><a href="/binzip/mypage/adminmypage/hostList.jsp">호스트 회원 관리</a></li>
				<li><a href="/binzip/mypage/adminmypage/guestList.jsp">게스트 회원 관리</a></li>
			</ul>
		</nav>
	</article>
	<article>
		<h2>GUEST LIST</h2>
	</article>
	<article>
		<h4>게스트 관리</h4>
		<div>
			<input type="search" name="idsearch">
		</div>
		<table>
			<caption>게스트 정보</caption>
			<thead>
				<tr>
					<th>name</th>
					<th>ID</th>
					<th>탈퇴</th>
				</tr>			
			</thead>
			<tbody>
				<%
				ArrayList<AdminDTO> arr = admindao.getGuestList();
				if(arr == null || arr.size() == 0){
					%>
					<tr>
						<td colspan="3">등록된 호스트 정보가 없습니다.</td>
					</tr>
					<%
				}else{
					for(int i = 0; i < arr.size(); i++){
						%>
						<tr>
							<td><%=arr.get(i).getHost_name()%></td>
							<td><%=arr.get(i).getId()%></td>
							<td>
								<input type="button" value="탈퇴" onclick="guestDelete();">
							</td>
						</tr>
						<%
					}
				}
				%>
			</tbody>
		</table>
	</article>
</section>
<%@include file="/footer.jsp" %>