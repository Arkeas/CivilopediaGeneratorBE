<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Costa</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Costa</div>
	<img src="/civilopediabe/images/large/TERRAIN_COAST.png" alt="Costa" class="contentimage" />
	<div class="contentleft">
		<h2>Prodotti:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> Cibo, 1</span> <img src="/civilopediabe/images/energy.png" alt="energy" /> Energia</div>
		<h2>Costo di movimento:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>Modificatore di combatt.:</h2><div class="infobox">0%</div>
		
<h2>Caratteristiche:</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('Ghiaccio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
<h2>Risorse fornite:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Petrolio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('Corallo');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('le Alghe');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>Informazioni sulla partita:</h2><div class="infobox">Le caselle costiere sono caselle di mare adiacenti alla terra. Esse forniscono Cibo ed Energia alle citt&agrave; vicine. Soltanto le unit&agrave; navali, quelle in sospensione e le terrestri "imbarcate" possono accedere alle caselle costiere.</div>
	</div>
</asp:Content>

