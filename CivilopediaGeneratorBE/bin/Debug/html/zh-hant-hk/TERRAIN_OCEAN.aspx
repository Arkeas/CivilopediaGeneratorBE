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
		<h2>產出：</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食物</div>
		<h2>移動力值消耗：</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>戰鬥修正值：</h2><div class="infobox">0%</div>
		
<h2>包含地貌：</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('浮冰');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
	</div>
	<div class="contentright">
		
		<h2>遊戲資訊：</h2><div class="infobox">海洋格位是深水格位。可為有技術利用海洋資源的城市提供食物和能源。</div>
	</div>
</asp:Content>

