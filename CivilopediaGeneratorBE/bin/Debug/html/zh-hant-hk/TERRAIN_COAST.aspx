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
		<h2>產出：</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食物, 1</span> <img src="/civilopediabe/images/energy.png" alt="energy" />能源</div>
		<h2>移動力值消耗：</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>戰鬥修正值：</h2><div class="infobox">0%</div>
		
<h2>包含地貌：</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('浮冰');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
<h2>包含資源：</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('珊瑚');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('海藻');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>遊戲資訊：</h2><div class="infobox">海岸格位是直接與土地相鄰的海洋格位。可提供食物和能源給附近的城市。只有海上單位、空中和盤旋單位和「海運」的陸上單位可以進入海岸格位。</div>
	</div>
</asp:Content>

