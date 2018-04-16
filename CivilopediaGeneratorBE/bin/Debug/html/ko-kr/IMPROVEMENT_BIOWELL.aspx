<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 생명우물</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">생명우물</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_BIOWELL.png" alt="생명우물" class="contentimage" />
	<div class="contentleft">
		<h2>유지:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		<h2>건강:</h2><div class="infobox">1 <img src="/civilopediabe/images/health.png" alt="health" /></div>
		<h2>생산:</h2><div class="infobox">2</span> <img src="/civilopediabe/images/food.png" alt="food" /> 식량</div>
		
		
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_BIONICS.aspx" onmouseover="return tooltip('생체공학');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_BIONICS.png" /></a></div>
		<h2>건축 가능한 지형:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('초원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('평원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('사막');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('툰드라');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">조화의 이상을 따르는 자들은 생명우물에 다가갈 수 있습니다. 생명우물은 인류와 자연을 더욱 가까이 연계시키는, 게임 후반에 나오는 시설입니다. 생명우물은 자체적으로 유지가 가능한, 생물 공학적 구조를 지녔으며, 자연적 환경을 통합하여 살기에 적합한 인공 환경을 조성합니다. 이러한 '자연적' 구조를 통해 이주단은 도시 생활의 편의성을 희생시키지 않고도 자연과 더불어 살아갈 수 있습니다.</div>
	</div>
</asp:Content>

