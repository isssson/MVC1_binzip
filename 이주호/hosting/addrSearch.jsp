<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#addrtext{
	width: 300px;
}
</style>
</head>
<body>
<section>
	<form name="addr_search_div" action="addrSearch_ok.jsp">
		<div class="addrsearch">
			<input type="text" name="zipaddr" id="addrtext" placeholder="예) 판교역로 235, 삼폄동 681">
			<input type="reset" value="다시작성">
			<input type="submit" value="검색">
		</div>
		<div>
			<p class="addr_search_tip">tip</p>
			<p class="addr_search_info">아래와 같은 조합으로 검색을 하시면 더욱 정확한 결과가 검색됩니다.</p>
			<p class="addr_search_ex1">도로명 &#43; 건물번호</p>
			<p class="addr_search_ex2">예&#41; 판교역로 235&#44; 제주 첨단로 242</p>
			<p class="addr_search_ex1">지역명&#40;동&#47;리&#41; &#43; 번지</p>
			<p class="addr_search_ex2">예&#41; 삼평동 681&#44; 제주 영평동 2181</p>
		</div>
	</form>
</section>
</body>
</html>