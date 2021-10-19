<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="binzip.adminmypage.*" %>
<jsp:useBean id="admindao" class="binzip.adminmypage.AdminDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GUEST MYPAGE</title>
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
.adminButton {
	background-color:#000000;
	border-radius:18px;
	border:1px solid #000000;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:12px;
	padding:5px 22px;
	text-decoration:none;
	margin-top: 2px;
}
.adminButton:hover {
	background-color:#ffffff;
	color:#000000;
}
</style>
</head>
<%
int guestGrade = 5;
int totalCnt = admindao.getHostTotalCnt(guestGrade);
int listSize = 20;
int pageSize = 5;

String cp_s = request.getParameter("cp");
if(cp_s== null || cp_s.equals("")){
	cp_s = "1";
}

int cp = Integer.parseInt(cp_s);

int totalPage = (totalCnt / listSize) + 1;
if(totalCnt % listSize == 0) totalPage--;


int group = cp / pageSize;
if(cp % pageSize == 0) group--;
%>
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
		<h2>GUEST LIST</h2>
	</article>
	<article>
		<h4>게스트 관리</h4>
		<form name="guestiddelete" action="guestDelete.jsp"></form>
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
				ArrayList<AdminDTO> arr = admindao.getList(cp, listSize, guestGrade);
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
							<td><%=arr.get(i).getName()%></td>
							<td><%=arr.get(i).getId()%></td>
							<td>
								<input type="hidden" name="guestdelid" value="<%=arr.get(i).getId()%>">
								<input type="button" class="adminButton" value="탈퇴" onclick="javasctipt:location.href='guestDelete.jsp?guestdelid=<%=arr.get(i).getId()%>';">
							</td>
						</tr>
						<%
					}
				}
				%>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3" align="center">
						<%
						if(group != 0){
							%>
							<a href="hostList.jsp?cp=<%=(group - 1) * pageSize + pageSize%>">&#8856;&#8856;</a>
							<%
						}
						%>
						<%			
						for(int i = group * pageSize + 1; i <= group * pageSize + pageSize; i++){
							%>&nbsp;&nbsp;<a href="hostList.jsp?cp=<%=i%>"><%=i%></a>&nbsp;&nbsp;<%
							
							if(i == totalPage){
								break;
							}
						}
						%>
						<%
						if(group != (totalPage / pageSize) - (totalPage % pageSize == 0 ? 1 : 0)){
							%>
							<a href="hostList.jsp?cp=<%=(group + 1) * pageSize + 1%>">&#8858;&#8858;</a>
							<%
						}
						%>
					</td>
				</tr>
			</tfoot>
		</table>
	</article>
</section>
<%@include file="/footer.jsp" %>