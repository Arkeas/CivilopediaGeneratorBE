<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 플래닛 카버</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">플래닛 카버</div>
	<img src="/civilopediabe/images/large/UNIT_PLANET_CARVER.png" alt="플래닛 카버" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">200 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		<h2>원거리 전투: </h2><div class="infobox">120 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>사정거리:</h2><div class="infobox">2 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		
		
		<h2>궤도 효과 범위:</h2><div class="infobox">2 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>궤도 선회 기간:</h2><div class="infobox">30 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>필요 자원:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('석유');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('티타늄');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_ORBITAL_AUTOMATION.aspx" onmouseover="return tooltip('궤도 자동화');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ORBITAL_AUTOMATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">궤도 유닛으로, 적대적 유닛에게 막강한 위력의 폭격을 퍼붓습니다.</div>
		
		<h2>역사</h2><div class="infobox">플래닛 카버는 궤도 레이저의 차세대 진화형입니다. 원래는 공대지 광산 도구로 개발되었으나 곧 군산 복합체가 사용하기 시작하면서 궤도 공격용으로 개조되었습니다. 플래닛 카버는 원래 행성의 지각 부분에 구멍을 뚫는 용도로 설계되었기 때문에 궤도 레이저보다 훨씬 화력이 강하며 구체적인 위력은 추정만 할 뿐이죠. 발사 시에 측정 도구가 모조리 불타버리기 때문에 플래닛 카퍼의 화력을 정확히 측정할 수가 없는 것입니다.</div>
	</div>
</asp:Content>

