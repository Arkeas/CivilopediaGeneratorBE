<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 과일</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">과일</div>
	<img src="/civilopediabe/images/large/RESOURCE_FRUIT.png" alt="과일" class="contentimage" />
	<div class="contentleft">
		<h2>생산:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> 식량</div>
		
		<h2>발견되는 지형: </h2><div class="infobox"><a href="FEATURE_FOREST.aspx" onmouseover="return tooltip('숲');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_FOREST.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('초원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('평원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a></div>
		<h2>필요한 시설:</h2><div class="infobox"><a href="IMPROVEMENT_PLANTATION.aspx" onmouseover="return tooltip('재배지');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PLANTATION.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>역사</h2><div class="infobox">현재 이 행성은 지구의 석탄기에 해당하므로 속씨식물이 거의 없어 토착종 중에는 열매를 맺는 식물이 극히 드뭅니다. 아프리카 연방, 태평양 연맹, 남아메리카 국가 기구의 최초 이주단은 먹을 수 있는 열매를 맺는 강인한 열대 식물을 지구에서 가져와 이 행성의 흙에 심었으며, 그 중 두리안, 아키, 잭푸르트, 체리모야, 화이트 사포티, 타마린드, 빵나무 등이 살아남아 번식했습니다. 실제로 불과 반세기 만에 이 열매 식물들은 원시적인 토착 속씨식물들과의 경쟁에서 살아남아 지표를 뒤덮었으며 콜로니의 주요 식량 보급원이 되었습니다. 이 행성의 토착 식물 중 몇몇 선인장류는 가시 돋친 배와 흡사한 열매(천년초)를 맺으며 영양분이 풍부한 것으로 밝혀졌습니다. 또한 토착 곰팡이류 중에도 그럭저럭 과일처럼 먹을 수 있는 홀씨주머니를 만들어내는 종이 있습니다. 마지막으로 지구에서는 멸종한 종과 흡사한 토착종 식물 중에도 주목과 비슷한 베리류 열매를 맺는 종이 있으며, 인목목의 석송류 중에 맛 좋은 '솔방울'을 맺는 식물이 있습니다. 야생에서 채취하든 콜로니 농부들이 다량으로 재배하든, 이렇게 다양한 열매들은 콜로니 주민의 식단을 풍성하게 해주며 인류의 삶을 유지하는 데 필요한 중요 무기질, 비타민, 섬유질을 공급하기도 합니다.</div>
	</div>
</asp:Content>

