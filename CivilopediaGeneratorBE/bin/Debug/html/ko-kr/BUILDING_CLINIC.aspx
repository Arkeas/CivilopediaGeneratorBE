<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 클리닉</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">클리닉</div>
	<img src="/civilopediabe/images/large/BUILDING_CLINIC.png" alt="클리닉" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">60 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>유지:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>건강:</h2><div class="infobox">+1 <img src="/civilopediabe/images/health.png" alt="health" /></div>
		
		
		
		<h2>과학:</h2><div class="infobox">+1 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('거주지');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
		
	</div>
	<div class="contentright">
		
		
		<h2>역사</h2><div class="infobox">클리닉은 작은 규모의 의료 시설로, 작은 공동체에서 기본적인 진료를 제공하기 위해 세워졌습니다. 21세기 후반 의료 클리닉은 대체로 자동화되었고, 진단 프로그램이 식별할 수 없는 부상이나 질병인 경우에만 네트워크 시스템을 통해 의사나 간호사를 호출하는 식으로 운영되었습니다. 자동 투여 캐비닛(전산화된 약물 보관 장치), 수술용 마이크로 로봇, 원격 진료소, 모니터링 스마트 침대, 자율식 현장 진단 장치, 그리고 기타 유사한 고급 의료 기술을 통해 모든 외래 환자와 단기 치료 대상인 환자를 치료할 수 있습니다. 콜로니 우주선에 항상 이러한 하드웨어가 포함되지는 않았지만, 소프트웨어와 구축 설명서는 정책의 일환으로 포함되었습니다. 이 행성에서 콜로니를 세운 초기에 다양한 위험과 질병에 대한 정보가 기하급수적으로 늘어나면서 클리닉은 어느 때보다도 콜로니 인구의 증가와 안정에 중요한 역할을 맡았습니다. 예를 들어 독기 중독에 대한 치료와 수술 정보는 콜로니 클리닉을 연결하는 의료 데이터베이스에 신속히 추가되었고, 이 정보만으로도 수많은 생명이 목숨을 구했습니다. 비록 더 큰 정착지에서는 실제로 직원을 둔 병원이 더 작은 의료 시설을 대체해 나갔지만, 자동화된 클리닉은 대부분의 이웃과 마을에서 중요한 부분으로 남았습니다.</div>
	</div>
</asp:Content>

