<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>
<%@ page import="binzip.help.*" %>
<jsp:useBean id="hdao" class="binzip.help.HelpDAO" scope="session"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HELP</title>
	<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
	<style type="text/css">
		.help_main_text{
			text-align: center;
			clear: both;
			margin-top: 30px;
			border-width: 1px;
		}
		.help_main_text h1{
			font-size: 30px;
		}
		.help_main_text span{
			font-size: 16px;
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
	</style>
</head>

<%
	int totalCnt = hdao.getTotalCnt(); //총 게시물 수
	int listSize = 10; //보여줄 리스트 수
	int pageSize = 5; //보여줄 페이지 수
	
	String cp_s = request.getParameter("cp");
	if(cp_s == null || cp_s.equals("")){
		cp_s = "1";
	}
	
	int cp = Integer.parseInt(cp_s); 
	
	int totalPage = (totalCnt / listSize) + 1;
	if(totalCnt % listSize == 0) totalPage--;
	
	int userGroup = cp / pageSize;
	if(cp % pageSize == 0) userGroup--;
%>

<body>
	<%@include file="../header.jsp" %>
	
	<%
		if(sid == null || sid.equals("")) {
			%>
			<script>
				window.alert('로그인 후 이용가능한 서비스 입니다.');
				location.href = '/binzip';
			</script>
			<%
			return;
		}
	%>
	<section>
		<div class="help_main_text">
			<h1>H E L P</h1>
			<span>Q&#38;A</span>
		</div>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>분류</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
			<%
			ArrayList<HelpDTO> arr = hdao.bbsList(cp, listSize);
			if(arr == null || arr.size() == 0) {
				%>
				<tr>
					<td colspan="6" align="center">
					등록된 게시글이 없습니다.
					</td>
				</tr>
				<%
			} else {
				for(int i = 0; i < arr.size(); i++) {
					%>
					<tr>
						<td><%= arr.get(i).getIdx() %></td>
						<td>
						<%
							switch(arr.get(i).getStatus()) {
								case 1 : %>[예약관련]<% break;
								case 2 : %>[환불관련]<% break;
								case 3 : %>[호스팅관련]<% break;
								case 4 : %>[기타문의]<%
							}
						%>
						</td>
						<td>
							<%
							for(int k = 0; k < arr.get(i).getLev(); k++) {
								out.println("&nbsp;&nbsp;");
							}
							%>
							<a href="helpContents.jsp?idx=<%=arr.get(i).getIdx() %>">
								<%= arr.get(i).getSubject() %>
							</a>
						</td>
						<td>
							<%= arr.get(i).getBinzip_member_id() %>
						</td>
						<td>
							<%= arr.get(i).getWritedate() %>
						</td>
						<td>
							<%= arr.get(i).getReadnum() %>
						</td>
					</tr>
					<%
				}
			}
			%>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="5" align="center">
					<!-- paging area -->
					<%
						if(userGroup != 0) {
							%>
							<a href="help.jsp?cp=<%= (userGroup - 1) * pageSize + pageSize %>">
								&lt;&lt;
							</a>
							<%
						}
					%>
					<%
						for(int i = (userGroup * pageSize) + 1; i <= (userGroup * pageSize) + pageSize; i++) {
							%>
							&nbsp;&nbsp;
							<a href="help.jsp?cp=<%= i %>">
								<%= i %>
							</a>
							&nbsp;&nbsp;
							<%
							if(i == totalPage) { 
								break;
							}
						}
					%>
					<%
						if(userGroup != (totalPage / pageSize) - (totalPage % pageSize == 0 ? 1 : 0)) {
							%>
							<a href="help.jsp?cp=<%= (userGroup + 1) * pageSize + 1 %>">
								&gt;&gt;
							</a>
							<%
						}
					%>
					</td>
					<td>
						<button type="button" onclick="location.href='helpWrite.jsp'">글쓰기</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</section>
	<%@include file="../footer.jsp" %>
</body>
</html>