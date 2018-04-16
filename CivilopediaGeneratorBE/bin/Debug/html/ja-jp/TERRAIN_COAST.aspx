<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 近海</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">近海</div>
	<img src="/civilopediabe/images/large/TERRAIN_COAST.png" alt="近海" class="contentimage" />
	<div class="contentleft">
		<h2>生産:</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食料, 1</span><img src="/civilopediabe/images/energy.png" alt="energy" />エネルギー</div>
		<h2>移動コスト:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>戦闘力補正:</h2><div class="infobox">0%</div>
		
<h2>発見可能な地物:</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('氷河');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
<h2>発見可能な資源:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('珊瑚');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('藻');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>ゲーム情報:</h2><div class="infobox">近海タイルは陸地に隣接する外洋タイルです。このタイルは近隣都市に食料とエネルギーを供給します。近海タイルに進入できるのは、海上ユニット、航空ユニット、そして"出航"済み陸上ユニットのみです。</div>
	</div>
</asp:Content>

