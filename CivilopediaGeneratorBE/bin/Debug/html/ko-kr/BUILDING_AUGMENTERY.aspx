<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 강화소</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">강화소</div>
	<img src="/civilopediabe/images/large/BUILDING_AUGMENTERY.png" alt="강화소" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">500 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		<h2>문화:</h2><div class="infobox">+1 <img src="/civilopediabe/images/culture.png" alt="culture" /> </div>
		<h2>식량:</h2><div class="infobox">+1 <img src="/civilopediabe/images/food.png" alt="food" /> </div>
		<h2>에너지:</h2><div class="infobox">+1 <img src="/civilopediabe/images/energy.png" alt="energy" /> </div>
		<h2>과학:</h2><div class="infobox">+1 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		<h2>생산력:</h2><div class="infobox">+1 <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		
        
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_AUGMENTATION.aspx" onmouseover="return tooltip('강화');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_AUGMENTATION.png" /></a></div>
		
		
		
		
		<h2>친화력:</h2><div class="infobox"><img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> 우월에서 <span class="color_supremacy_affinity"> 레벨 7 필요</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>역사</h2><div class="infobox">인공 두뇌의 향상 또는 장기 기관의 업그레이드에서 복잡하고 집약적인 수술이 요구될 때가 있는데, 이 경우 개인의 회복 시간도 더 길어집니다. 강화소는 환자의 휴식 기간을 최소화하면서 인공 두뇌 또는 장기 기관의 장착, 업그레이드, 수리를 위해 고안된 시설입니다. 여기에서는 전두엽 기능 보완에서부터 이식을 통한 사지 강화에 이르기까지 거의 모든 인공 두뇌 수술은 당일 회복이 가능한 통원 수술로 시행될 수 있습니다.<br /><br />많은 강화소는 전적으로 컴퓨터에 의해 진행되지만(예를 들어 테크앤아웃이라는 프랜차이즈도 있음), 인간 의료진과 수술 로봇이 함께 할 때가 가장 효과가 좋습니다. 환자가 살짝 마취된 상태로 수술실로 들어가면 최상의 마이크로 수술 도구와 기법으로 수술이 진행됩니다. 약간의 시간이 지나면 환자가 깨어나고, 예전과 같이 과일 주스와 비스킷을 제공한 후 퇴원시킵니다.</div>
	</div>
</asp:Content>

