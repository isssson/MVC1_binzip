<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="binzip.addr.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean id="binzipaddrdao" class="binzip.addr.Binzip_AddrDAO"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#addrtext{
	width: 200px;
}
</style>
<script>
for(int i=0;i<arr.size();i++){
	out.print(arr(i));	
}

	var seoul = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구",
				"동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구",
				"용산구","은평구","종로구","중구","중랑구"];
	var gyeonggi = ["가평군","고양시 덕양구","고양시 일산동구","고양시 일산서구","과천시","광명시","광주시","구리시",
					"군포시","김포시","남양주시","동두천시","부천시","성남시 분당구","성남시 수정구","성남시 중원구",
					"수원시 권선구","수원시 영통구","수원시 장안구","수원시 팔달구","시흥시","안산시 단원구",
					"안산시 상록구","안성시","안양시 동안구","안양시 만안구","양주시","양평군","여주시","연천군",
					"오산시","용인시 기흥구","용인시 수지구","용인시 처인구","의왕시","의정부시","이천시","파주시",
					"평택시","포천시","하남시","화성시"];
	
</script>
</head>
<body>
<section>
	<form name="addr_search_div" action="addrSearch_ok.jsp">
		<div class="addrsearch">
			<select name="addrsido" id="sido" onchange="sigunguChange(this);">
				<option value="si_do">시/도</option>
				<option value="seoul">서울특별시</option>
				<option value="gyeonggi">경기도</option>
			</select>
			<select name="addrsigungu" id="sigungu">
				<option value="">시/군/구</option>
				<%
				ArrayList<Binzip_AddrDTO> arr = binzipaddrdao.siGunGu();
				if(arr == null || arr.size() == 0){
					%>
					<option value="si_gun_gu">없음</option>
					<%
				}else{
					for(int i=0;i<arr.size();i++){
						%>
						<option value="si_gun_gu"><%=arr.get(i).getSi_gun_gu() %></option>
						<%	
					}					
				}
				%>
				
			</select>
			<select name="addrdong" id="dong">
				<option value="">읍/면/동</option>
			</select>
			<input type="text" name="zipaddr" id="addrtext" placeholder="예) 삼폄동 681">
			<input type="reset" value="다시작성">
			<input type="submit" value="검색">
		</div>
		<div>
			<p class="addr_search_tip">tip</p>
			<p class="addr_search_info">아래와 같은 조합으로 검색을 하시면 더욱 정확한 결과가 검색됩니다.</p>
			<p class="addr_search_ex1">지역명&#40;동&#47;리&#41; &#43; 번지</p>
			<p class="addr_search_ex2">예&#41; 삼평동 681&#44; 제주 영평동 2181</p>
		</div>
	</form>
</section>
</body>
</html>