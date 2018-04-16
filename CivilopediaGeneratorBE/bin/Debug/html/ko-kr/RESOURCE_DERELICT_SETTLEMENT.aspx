<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 버려진 거주지</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">버려진 거주지</div>
	<img src="/civilopediabe/images/large/RESOURCE_DERELICT_SETTLEMENT.png" alt="버려진 거주지" class="contentimage" />
	<div class="contentleft">
		<h2>생산:</h2><div class="infobox">생산 없음</div>
		
		<h2>발견되는 지형: </h2><div class="infobox"><a href="FEATURE_FOREST.aspx" onmouseover="return tooltip('숲');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_FOREST.png" /></a><a href="FEATURE_MARSH.aspx" onmouseover="return tooltip('습지');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_MARSH.png" /></a><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('언덕');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('초원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('평원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('사막');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('툰드라');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('설원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('언덕');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a></div>
		<h2>필요한 시설:</h2><div class="infobox"><a href="IMPROVEMENT_EXPEDITION.aspx" onmouseover="return tooltip('탐사 현장');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_EXPEDITION.png" /></a></div>
	</div>
	<div class="contentright">
		
<h2>게임 정보:</h2><div class="infobox">탐험가 유닛으로 이곳에 탐험대를 만들면 보상을 발견할 수 있습니다.</div>
		<h2>역사</h2><div class="infobox">행성에 착륙한 지 수십 년이 흐른 후, 많은 단체들이 콜로니의 변경  너머로 나아가 독자생존을 시도했습니다. 주둔지 수장들이 그 동안 건설했던 시설들을 버려두고 다른 곳으로 옮겨가기도 했고, 희망과 계획 속에 건설했던 마을이 통제를 벗어나 처참한 상황이 되자 콜로니 거주자들이 터전을 버리고 떠나는 경우도 있었습니다. 변방으로 향했던 이유가 무엇이었든 간에, 이렇게 버려진 개척지는 탐사하는 이들에게는 보물창고였습니다.</div>
	</div>
</asp:Content>

