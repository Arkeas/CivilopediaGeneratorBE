<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Oro</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Oro</div>
	<img src="/civilopediabe/images/large/RESOURCE_GOLD.png" alt="Oro" class="contentimage" />
	<div class="contentleft">
		<h2>Rendimientos:</h2><div class="infobox">1 de Cultura <img src="/civilopediabe/images/culture.png" alt="culture" /></div>
		
		<h2>Terrenos donde se encuentra:</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('Colina');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('Pradera');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('Llanura');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('Desierto');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
		<h2>Se mejora con:</h2><div class="infobox"><a href="IMPROVEMENT_MINE.aspx" onmouseover="return tooltip('Mina');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_MINE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>Historia</h2><div class="infobox">Peso at&oacute;mico 196,96; n&uacute;mero at&oacute;mico 79. El oro era muy valioso en la Vieja Tierra debido a su escasez (menos de una 0,005 parte por mill&oacute;n), lustre, maleabilidad y por ser pr&aacute;cticamente indestructible. Antes del Gran Error eran muchos los pa&iacute;ses donde el oro serv&iacute;a de valor est&aacute;ndar para la moneda nacional, y desde los albores de la humanidad se ha comerciado con &eacute;l, codiciado y robado. No obstante, en este planeta, el oro es muy com&uacute;n en las vetas hidrotermales y su uso, a excepci&oacute;n de la joyer&iacute;a, es principalmente industrial y tecnol&oacute;gico. El oro es conductor de la electricidad y, al mismo tiempo, resistente a la corrosi&oacute;n, lo que hace que sea ideal para usarlo en entornos h&uacute;medos o salinos. Su uso est&aacute; muy extendido en ordenadores, equipamiento de comunicaciones, semiconductores, naves espaciales y la mayor&iacute;a de los tipos de motor. El oro tambi&eacute;n resulta esencial para la operaci&oacute;n eficiente de trajes de combate avanzados, veh&iacute;culos blindados, buques y otro equipamiento militar. La miner&iacute;a y el refinado del oro que abunda en el entorno es un proceso muy sencillo, tanto que incluso los prospectores civiles pueden hacerlo. Lejos del mundo natal, la relaci&oacute;n de la humanidad con este noble metal sigue siendo muy estrecha.</div>
	</div>
</asp:Content>

