<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 테라스케이프</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">테라스케이프</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_TERRASCAPE.png" alt="테라스케이프" class="contentimage" />
	<div class="contentleft">
		<h2>유지:</h2><div class="infobox">6 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>생산:</h2><div class="infobox">2</span> <img src="/civilopediabe/images/food.png" alt="food" /> 식량<br />2</span> <img src="/civilopediabe/images/production.png" alt="production" /> 생산력<br />2 <img src="/civilopediabe/images/culture.png" alt="culture" /> 문화</div>
		
		
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_TERRAFORMING.aspx" onmouseover="return tooltip('테라포밍');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_TERRAFORMING.png" /></a></div>
		<h2>건축 가능한 지형:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('초원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('평원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('사막');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('툰드라');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('설원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">테라스케이프는 자연에 대한 인류의 우세함을 잘 보여주는 상징과도 같습니다. 게임 후반에 나오는 테라스케이프는 에덴동산과 같이 에너지를 제외하고 도시의 모든 생산을 향상시키는 완벽한 환경입니다. 이 놀라운 업적은 테라포밍을 통해 성공했으며, 모든 지형이나 자원에 테라스케이프를 세울 수 있게 되었습니다. 그러나 완벽을 추구하는 이는 그 대가를 기꺼이 감수해야 합니다. 테라스케이프는 건설 비용뿐만 아니라 유지 비용도 매우 높기 때문입니다.</div>
	</div>
</asp:Content>

