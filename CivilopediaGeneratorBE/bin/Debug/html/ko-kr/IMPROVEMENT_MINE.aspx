<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 광산</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">광산</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MINE.png" alt="광산" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>생산:</h2><div class="infobox">2</span> <img src="/civilopediabe/images/production.png" alt="production" /> 생산력<br /><img src="/civilopediabe/images/copper.png" alt="copper" /> 구리(으)로부터 +1 <img src="/civilopediabe/images/energy.png" alt="energy" /> 에너지<br /><img src="/civilopediabe/images/gold.png" alt="gold" /> 금(으)로부터 +1 <img src="/civilopediabe/images/culture.png" alt="culture" /> 문화<br /><img src="/civilopediabe/images/silica.png" alt="silica" /> 이산화규소(으)로부터 +1 <img src="/civilopediabe/images/research.png" alt="science" /> 과학<br /><img src="/civilopediabe/images/titanium.png" alt="titanium" /> 티타늄(으)로부터 +3 <img src="/civilopediabe/images/production.png" alt="production" /> 생산력</div>
		
		
		<h2>시설이 가능한 자원:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('티타늄');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a><a href="RESOURCE_GOLD.aspx" onmouseover="return tooltip('금');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_GOLD.png" /></a><a href="RESOURCE_COPPER.aspx" onmouseover="return tooltip('구리');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_COPPER.png" /></a><a href="RESOURCE_SILICA.aspx" onmouseover="return tooltip('이산화규소');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_SILICA.png" /></a></div>
		
		<h2>건축 가능한 지형:</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('언덕');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">광업의 중요성은 지상의 경계를 초월합니다. 훼손되지 않은 외계에서 자원과 생산에 대한 요구는 생존에 필요한 유닛, 건물, 불가사의를 제공한다는 점에서 상당히 중요해졌습니다. 광산은 생산력을 높이고자 언덕에 세울 수 있습니다. 또한 광산을 통해 구리, 이산화규소, 희귀한 파이락사이트와 같은 주요 자원도 확보할 수 있습니다.</div>
	</div>
</asp:Content>

