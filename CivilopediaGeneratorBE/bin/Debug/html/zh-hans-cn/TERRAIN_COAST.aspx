<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 海岸</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">海岸</div>
	<img src="/civilopediabe/images/large/TERRAIN_COAST.png" alt="海岸" class="contentimage" />
	<div class="contentleft">
		<h2>产出：</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食物, 1</span> <img src="/civilopediabe/images/energy.png" alt="energy" />能量</div>
		<h2>移动消耗：</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>战力影响：</h2><div class="infobox">0%</div>
		
<h2>相容地貌：</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('冰原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
<h2>资源出现地形：</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('珊瑚');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('海藻');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>游戏信息：</h2><div class="infobox">海岸单元格是与陆地直接相邻的海洋单元格。它们能为附近的城市提供食物和能量。只有海上单位、空中单位、悬浮单位、以及在“已登船”状态下的陆地单位能够进入海岸单元格。</div>
	</div>
</asp:Content>

