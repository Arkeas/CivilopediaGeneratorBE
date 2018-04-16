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
		<h2>Rendimientos:</h2><div class="infobox">1</span> a Alimentos <img src="/civilopediabe/images/food.png" alt="food" />, 1</span> de Energ&iacute;a <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		<h2>Coste del movimiento:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>Modificador de combate:</h2><div class="infobox">0%</div>
		
<h2>Accidentes:</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('Hielo');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
<h2>Recursos encontrados:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Petr&oacute;leo');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('Coral');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('Algas');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>Informaci&oacute;n de la partida:</h2><div class="infobox">Los hex&aacute;gonos costeros son las casillas de oc&eacute;ano que est&aacute;n adyacentes a tierra. Proporcionan Alimentos y Energ&iacute;a a una ciudad que se encuentre cerca. &Uacute;nicamente las unidades navales, las unidades a&eacute;reas y flotantes y las unidades terrestres "embarcadas" pueden entrar en las casillas costeras.</div>
	</div>
</asp:Content>

