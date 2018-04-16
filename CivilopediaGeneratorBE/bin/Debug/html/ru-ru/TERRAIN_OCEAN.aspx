<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Океан</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Океан</div>
	<img src="/civilopediabe/images/large/TERRAIN_OCEAN.png" alt="Океан" class="contentimage" />
	<div class="contentleft">
		<h2>Производительность:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> пищи</div>
		<h2>Стоимость движения:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>Влияние на бой:</h2><div class="infobox">0%</div>
		
<h2>Особенности:</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('Ледник');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
	</div>
	<div class="contentright">
		
		<h2>Игровая информация:</h2><div class="infobox">Океан - глубоководные клетки. Они дают городу пищу и энергию - при наличии определенных технологий.</div>
	</div>
</asp:Content>

