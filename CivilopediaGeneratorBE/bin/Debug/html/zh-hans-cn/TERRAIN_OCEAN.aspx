<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 海洋</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">海洋</div>
	<img src="/civilopediabe/images/large/TERRAIN_OCEAN.png" alt="海洋" class="contentimage" />
	<div class="contentleft">
		<h2>产出：</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食物</div>
		<h2>移动消耗：</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>战力影响：</h2><div class="infobox">0%</div>
		
<h2>相容地貌：</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('冰原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
	</div>
	<div class="contentright">
		
		<h2>游戏信息：</h2><div class="infobox">海洋单元格也被称作深水单元格。如果一个城市的科技发展得当的话，那么海洋将可以为它提供食物和能量。</div>
	</div>
</asp:Content>

