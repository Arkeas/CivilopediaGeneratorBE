<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Oc&eacute;ano</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Oc&eacute;ano</div>
	<img src="/civilopediabe/images/large/TERRAIN_OCEAN.png" alt="Oc&eacute;ano" class="contentimage" />
	<div class="contentleft">
		<h2>Rendimientos:</h2><div class="infobox">1</span> a Alimentos <img src="/civilopediabe/images/food.png" alt="food" /></div>
		<h2>Coste del movimiento:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>Modificador de combate:</h2><div class="infobox">0%</div>
		
<h2>Accidentes:</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('Hielo');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
	</div>
	<div class="contentright">
		
		<h2>Informaci&oacute;n de la partida:</h2><div class="infobox">Los hex&aacute;gonos de oc&eacute;ano son los que est&aacute;n en aguas profundas. Proporcionan Alimentos y Energ&iacute;a a la ciudad cuando esta tiene la tecnolog&iacute;a necesaria para acceder a ellos.</div>
	</div>
</asp:Content>

