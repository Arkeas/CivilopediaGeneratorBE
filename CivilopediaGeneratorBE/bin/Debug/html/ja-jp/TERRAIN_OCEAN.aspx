<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 外洋</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">外洋</div>
	<img src="/civilopediabe/images/large/TERRAIN_OCEAN.png" alt="外洋" class="contentimage" />
	<div class="contentleft">
		<h2>生産:</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食料</div>
		<h2>移動コスト:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>戦闘力補正:</h2><div class="infobox">0%</div>
		
<h2>発見可能な地物:</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('氷河');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
	</div>
	<div class="contentright">
		
		<h2>ゲーム情報:</h2><div class="infobox">外洋タイルは深水域タイルです。都市が適切なテクノロジーを獲得すれば、このタイルからは食料やエネルギーが得られるようになります。</div>
	</div>
</asp:Content>

