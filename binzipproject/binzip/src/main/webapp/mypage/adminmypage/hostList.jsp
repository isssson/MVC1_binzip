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

</head>
<body>
<%@include file="/header.jsp" %>
<section>
	<article>
		<nav>
			<ul>
				<li><a href="/binzip/mypage/adminmypage/hostList.jsp">호스트 회원 관리</a></li>
				<li><a href="/binzip/mypage/adminmypage/guestList.jsp">게스트 회원 관리</a></li>
				<li><a href="/binzip/member/logout.jsp">로그아웃</a></li>
			</ul>
		</nav>
	</article>
	<article>
		<h2>HOST LIST</h2>
	</article>
	<article>
		<h4>호스트 관리</h4>		
		<form name="hostiddelete" action="hostDelete.jsp">
		<table>
			<caption>호스트 정보</caption>
			<thead>
				<tr>
					<th>name</th>
					<th>ID</th>
					<th>탈퇴</th>
				</tr>			
			</thead>
			<tbody>			
				<%
				ArrayList<AdminDTO> arr = admindao.getHostList();
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
								<input type="hidden" name="hostdelid" value="<%=arr.get(i).getId()%>">
								<input type="button" value="탈퇴" onclick="javasctipt:location.href='hostDelete.jsp?hostdelid=<%=arr.get(i).getId()%>';">								
							</td>
						</tr>
						<%
					}
				}
				%>
			</tbody>
		</table>
		</form>
	</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>




















