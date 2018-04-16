<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: K&uuml;ste</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">K&uuml;ste</div>
	<img src="/civilopediabe/images/large/TERRAIN_COAST.png" alt="K&uuml;ste" class="contentimage" />
	<div class="contentleft">
		<h2>Ertrag:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> Nahrung, 1</span> <img src="/civilopediabe/images/energy.png" alt="energy" /> Energie</div>
		<h2>Fortbewegungskosten:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>Kampfmodifikator:</h2><div class="infobox">0%</div>
		
<h2>Gel&auml;ndearten:</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('Eis');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
<h2>Ressourcen zu finden:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Erdöl');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('Korallen');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('Algen');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>Spielinformationen:</h2><div class="infobox">K&uuml;stengel&auml;ndefelder sind Ozeangel&auml;ndefelder, die an Land grenzen. Sie bieten einer nahen Stadt Nahrung und Energie. Nur K&uuml;steneinheiten, Lufteinheiten, Schwebeeinheiten und Landeinheiten "zu Wasser" können K&uuml;stengel&auml;ndefelder betreten.</div>
	</div>
</asp:Content>

