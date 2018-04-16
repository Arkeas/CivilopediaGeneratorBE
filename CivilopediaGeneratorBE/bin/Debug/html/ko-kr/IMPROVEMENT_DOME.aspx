<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 돔</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">돔</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_DOME.png" alt="돔" class="contentimage" />
	<div class="contentleft">
		<h2>유지:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>생산:</h2><div class="infobox">2 <img src="/civilopediabe/images/culture.png" alt="culture" /> 문화<br /><img src="/civilopediabe/images/strength.png" alt="strength" /> 도시 체력: +10</div>
		
		
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_BIOLOGY.aspx" onmouseover="return tooltip('생물학');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_BIOLOGY.png" /></a></div>
		<h2>건축 가능한 지형:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('초원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('평원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('사막');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('툰드라');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('설원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">돔은 우호적인 환경과 생명을 퍼뜨리기 위해 특별히 고안된 게임 후반에 나오는 고급 시설입니다. 옛 지구의 생물권과 마찬가지로 돔은 통제된 생태계로, 순수 신봉자들은 이를 통해 옛 지구의 환경을 재현할 수 있습니다. 그 방대한 크기는 도시 방어를 확장하는 데 추가 보너스를 제공합니다.</div>
	</div>
</asp:Content>

