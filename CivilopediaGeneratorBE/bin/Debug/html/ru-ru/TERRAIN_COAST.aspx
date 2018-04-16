<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Побережье</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Побережье</div>
	<img src="/civilopediabe/images/large/TERRAIN_COAST.png" alt="Побережье" class="contentimage" />
	<div class="contentleft">
		<h2>Производительность:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> пищи, 1</span> <img src="/civilopediabe/images/energy.png" alt="energy" /> ед. энергии</div>
		<h2>Стоимость движения:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>Влияние на бой:</h2><div class="infobox">0%</div>
		
<h2>Особенности:</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('Ледник');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
<h2>Ресурсы:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Нефть');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('кораллов');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('водорослей');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>Игровая информация:</h2><div class="infobox">Побережье - это клетки океана, которые примыкают к суше. Они обеспечивают находящийся рядом город пищей и энергией. На клетку побережья может переместиться только морской, воздушный или левитирующий юнит, а также сухопутные юниты, которые погружены на борт.</div>
	</div>
</asp:Content>

