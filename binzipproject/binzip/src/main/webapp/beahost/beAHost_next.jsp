<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BE A HOST</title>
	<link rel="stylesheet" type="text/css" href="/binzip/css/mainLayout.css">
	<style type="text/css">
		.beahost_main_text{
			text-align: center
		}
		table {
			margin: 0px auto;
			width: 1000px;
			border-top: 3px double gray;
			border-bottom: 3px double gray;
			text-align: center;
		}	
		table th{
			background-color: lightgray;
		}
		.submitbt{
			text-align: center
		}	
	</style>
	
	<script type="text/javascript">
		function selectAll(selectAll)  {
			  const checkboxes 
			     = document.querySelectorAll('input[type="checkbox"]');
			  
			  checkboxes.forEach((checkbox) => {
			    checkbox.checked = selectAll.checked
			  })
		}
	</script>
</head>
<body>
	<%@include file="../header.jsp" %>
	<section>
		<div class="beahost_main_text">
			<h1>HOST 등록 요청하기</h1>
		</div>
		<form name="fm_terms" action="beAHost_next_ok.jsp">
			<%
				String termsOfService = request.getParameter("termsOfService");
				String privacyPolicy = request.getParameter("privacyPolicy");
			%>
			<input type="hidden" name="termsOfService" value="<%= termsOfService %>">		
			<input type="hidden" name="privacyPolicy" value="<%= privacyPolicy %>">
			<table>
				<tr>
					<th colspan="1">번호</th>
					<th>필수 동의 사항</th>
					<th>
						전체동의
						<input type="checkbox" name="agreement_all" value='selectall' onclick='selectAll(this)'/>
					</th>
					<th>예</th>
				</tr>
				<tr>
					<td>1</td>
					<td>분실우려가 있는 물품이 있다면 책임은 호스트에게 있습니다.</td>
					<td> 동의하십니까? </td>
					<td><input type="checkbox" name="agreement2_cb1" value="yes"></td>
				</tr>
				<tr>
					<td>2</td>
					<td>파손우려가 있는 물품이 있다면 책임은 호스트에게 있습니다.</td>
					<td> 동의하십니까? </td>
					<td><input type="checkbox" name="agreement2_cb2" value="yes"></td>
				</tr>
				<tr>
					<td>3</td>
					<td>실내에 CCTV가 있다면 호스팅이 불가합니다.</td>
					<td> 동의하십니까? </td>
					<td><input type="checkbox" name="agreement2_cb3" value="yes"></td>
				</tr>
				<tr>
					<td>4</td>
					<td>환불관련 규정은 BINZIP의 규정을 따릅니다.</td>
					<td> 동의하십니까? </td>
					<td><input type="checkbox" name="agreement2_cb4" value="yes"></td>
				</tr>
			</table>
			<br>
			<div class="submitbt">
				<button type="button" onclick="location.href='beAHost.jsp'">이전으로</button>
				<button type="reset">선택해제</button>
				<button type="submit" value="finish" name="finish_button">호스트되기</button>
			</div>
		</form>
	</section>
	<%@include file="../footer.jsp" %>
</body>
</html>