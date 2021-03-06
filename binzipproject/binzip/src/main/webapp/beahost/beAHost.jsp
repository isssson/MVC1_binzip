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
		.terms_box{
			border: 2px solid lightgray;
			text-align: center; 
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
		<div class="beahost_main_text">
			<h1>HOST 등록 요청하기</h1>
		</div>
		
		<form name="fm_terms" action="beAHost_ok.jsp">
			<div class="terms_box">
				<div class="terms_agreement">
					<h3>약관동의</h3>
					<hr>
				</div>
				<div class="terms_use">
					<h4>이용약관</h4>
					<div class="terms_check_all">
						<b>이용약관, 개인정보취급방침에 모두 동의 합니다.</b>
						<input type="checkbox" name="agreement_all" value='selectall' onclick='selectAll(this)'/>
					</div>
					<br>
					<textarea rows="15" cols="100" readonly>
개인정보 수집 및 이용 동의
1. 수집항목: [필수] 이름, 연락처, 이메일주소, 인원정보
2. 수집 및 이용목적: 사업자회원과 예약이용자의 원활한 거래 진행, 고객상담, 불만처리 등 민원 처리, 분쟁조정 해결을 위한 기록보존, 스테이폴리오 멤버십 및 프로모션, 이벤트 안내
3. 보관기간: 회원탈퇴 등 개인정보 이용목적 달성 시까지 보관. 단, 상법 및 ‘전자상거래 등에서의 소비자 보호에 관한 법률’ 등 관련 법령에 의하여 일정 기간 보관이 필요한 경우에는 해당 기간 동안 보관함
4. 동의 거부권 등에 대한 고지: 정보주체는 개인정보의 수집 및 이용 동의를 거부할 권리가 있으나, 이 경우 상품 및 서비스 예약이 제한될 수 있습니다.

개인정보 제3자 제공 동의
1. 개인정보를 제공받는 자: BINZIP
2. 제공하는 개인정보 항목: [필수] 빈집 아이디, 이름, 연락처, 이메일주소, 인원정보
3. 개인정보를 제공받는 자의 이용목적: 사업자회원과 예약이용자의 원활한 거래 진행, 고객상담, 불만처리 등 민원 처리, 분쟁조정 해결을 위한 기록보존
4. 개인정보를 제공받는 자의 개인정보 보유 및 이용기간: 개인정보 이용목적 달성 시 까지 보존합니다.
5. 동의 거부권 등에 대한 고지: 정보주체는 개인정보 제공 동의를 거부할 권리가 있으나, 이 경우 상품 및 서비스 예약이 제한될 수 있습니다.
					</textarea><br>
					<div class="input_check">
						<label>서비스 이용 약관 동의(필수)</label>
						<input type="checkbox" name="termsOfService"/>
					</div>
					<h4>가입정보관리정책</h4>
					<textarea rows="15" cols="100" readonly>
제 1조 (총칙)
1. 개인정보란 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명, 주민등록번호 등의 사항에 의하여 당해 개인을 식별할 수 있는 정보 (당해 정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함합니다.) 를 말합니다.
2. 빈집은 귀하의 개인정보 보호를 매우 중요시하며, ‘정보통신망이용촉진 및 정보보호에 관한 법률’ 상의 개인정보 보호규정 및 정보통신부가 제정한 ‘개인정보 보호지침’을 준수하고 있습니다.
3. 빈집은 개인정보취급방침을 정하고 이를 귀하께서 언제나 쉽게 확인할 수 있게 공개하도록 하고 있습니다.
4. 빈집은 개인정보 처리방침의 지속적인 개선을 위하여 개정하는데 필요한 절차를 정하고 있으며, 개인정보 처리방침을 회사의 필요한 사회적 변화에 맞게 변경할 수 있습니다. 그리고 개인정보처리방침을 개정하는 경우 버전번호 등을 부여하여 개정된 사항을 귀하께서 쉽게 알아볼 수 있도록 하고 있습니다.

제 2조 (수집하는 개인정보 항목 및 수집방법)
1. 빈집은 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수 있습니다. 스테이폴리오에서 예약 및 프로모션, 이벤트 서비스를 이용하시고자 할 경우 다음의 정보를 입력해주셔야 합니다.
- 입력항목 : 희망ID, 비밀번호, 성명, 이메일주소
2. 또한 서비스 이용과정이나 사업 처리 과정에서 아래와 같은 정보들이 생성되어 수집될 수 있습니다.
- 최근접속일, 접속 IP 정보, 쿠키, 구매로그, 이벤트로그
- 회원가입 시 회원이 원하시는 경우에 한하여 추가 정보를 선택, 제공하실 수 있도록 되어있으며, 일부 재화 또는 용역 상품에 대한 주문 및 예약 시 회원이 원하는 정확한 주문 내용 파악을 통한 원활한 고객 응대 및 예약 처리를 위하여 추가적인 정보를 요구하고 있습니다.
3. 빈집은 다음과 같은 방법으로 개인정보를 수집합니다.
- 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 응모, 예약신청
- 로그 분석 프로그램을 통한 생성정보 수집
4. 개인정보 수집에 대한 동의
- 빈집은 귀하께서 스테이폴리오의 개인정보취급방침 및 이용약관의 내용에 대해 「동의한다」버튼 또는 「동의하지 않는다」버튼을 클릭할 수 있는 절차를 마련하여, 「동의한다」버튼을 클릭하면 개인정보 수집에 대해 동의한 것으로 봅니다.
5. 14세 미만 아동의 개인정보보호
빈집은 법정 대리인의 동의가 필요한 만14세 미만 아동의 회원가입은 받고 있지 않습니다.
6. 비회원의 개인정보보호
- 빈집은 비회원 주문의 경우에도 예약정보, 대금결제, 예약내역 조회 및 예약확인, 실명여부 확인을 위하여 필요한 개인정보만을 요청하고 있으며, 이 경우 그 정보는 대금결제 및 객실예약 관련된 용도 이외에는 다른 어떠한 용도로도 사용되지 않습니다.
- 빈집은 비회원의 개인정보도 회원과 동등한 수준으로 보호합니다.
					</textarea><br>
					<div class="input_check">
						<label>개인정보 취급방침 동의 (필수)</label>
						<input type="checkbox" name="privacyPolicy"/>
					</div>
					<br>
					<div>
						<button type="reset">선택해제</button>
						<button type="submit" value="next_button" name="next_button">다음으로</button>
					</div>
				</div>
				<br>
			</div>
		</form>
	</section>
	<%@include file="../footer.jsp" %>
</body>
</html>