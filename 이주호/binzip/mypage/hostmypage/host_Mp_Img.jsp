<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
</head>
<body>
<%@include file="/header.jsp" %>
<jsp:useBean id="imgwf" class="binzip.wf.ImgWebFolder" scope="session"></jsp:useBean>
<%
	String id = (String)(session.getAttribute("sid"));
	String name = (String)(session.getAttribute("sname"));
	imgwf.setId(id);
	imgwf.hostImgFolderExist();
	long totalSize=imgwf.getTotalSize()/1024;
	long usedSize=imgwf.getUsedSize()/1024;
	long freeSize=imgwf.getFreeSize()/1024;
	String cp = request.getParameter("cp");
	if(cp == null || cp.equals("")){
		cp = id;
	}
	imgwf.setCrpath(cp);
%>
<section>
	<article>
		<fieldset>
		<label class="sizemeter">총 용량</label>
			<meter min="0" max="<%=imgwf.getTotalSize() %>" value="<%=imgwf.getTotalSize()%>"></meter>(<%=totalSize%> KB)<br>
			<label class="sizemeter">사용 용량</label>
			<meter min="0" max="<%=imgwf.getTotalSize()  %>" value="<%=imgwf.getUsedSize()%>"></meter>(<%=usedSize%> KB)<br>
			<label class="sizemeter">남은 용량</label>
			<meter min="0" max="<%=imgwf.getTotalSize()  %>" value="<%=imgwf.getFreeSize()%>"></meter>(<%=freeSize%> KB)
		</fieldset>
		<fieldset>
			<legend><%=name %>님의 이미지파일</legend><!-- 이름넣어주면 좋을듯 (세션) -->
			<table>
				<thead>
					<tr>
						<th>분류</th>
						<th>파일명</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
				<%
				if(!imgwf.getCrpath().equals(imgwf.getId())){
					int point = imgwf.getCrpath().lastIndexOf("/");
					String upcp = imgwf.getCrpath().substring(0,point); 
					%>
					<tr>
						<td colspan="3" align="center">
						<a href="host_Mp_Img.jsp?cp=<%=upcp%>">이전으로</a>
						</td>
					</tr>
					<%
				}
				%>				
				<%
				File f = new File(imgwf.HOST_HOME+"/"+imgwf.getCrpath());
				
				File files[] = f.listFiles();
				
				if(files == null || files.length == 0){
					%>
					<tr>
						<td colspan="3" align="center">
							등록된 파일이 없습니다.
						</td>
					</tr>
					<%
				}else{
					for(int i = 0; i < files.length; i++){
						%>
						<tr>
							<td><%=files[i].isFile()?"[파일]":"[폴더]" %></td>
							<td><%
							if(files[i].isFile()){
								%>
								<a href="/binzip/hosting/imgupload/<%=imgwf.getCrpath()%>/<%=files[i].getName()%>"><%=files[i].getName() %></a>
								<%
							}else{
								%>
								<a href="/binzip/mypage/hostmypage/host_Mp_Img.jsp?cp=<%=imgwf.getCrpath()%>/<%=files[i].getName()%>"><%=files[i].getName() %></a>
								<%
							}
							%>							
							</td>
							<td>삭제</td>
						</tr>
						<%
					}
				}
				%>
				</tbody>
			</table>
		</fieldset>
	</article>
</section>
<%@include file="/footer.jsp" %>
</body>
</html>









