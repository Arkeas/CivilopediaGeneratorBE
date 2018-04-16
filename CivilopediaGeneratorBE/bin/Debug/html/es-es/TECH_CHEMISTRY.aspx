<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Qu&iacute;mica</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Qu&iacute;mica</div>
	<img src="/civilopediabe/images/large/TECH_CHEMISTRY.png" alt="Qu&iacute;mica" class="contentimage" />
	<div class="contentleft">
		<h2>Coste:</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>Edificios desbloqueados:</h2><div class="infobox"><a href="BUILDING_LABORATORY.aspx" onmouseover="return tooltip('Laboratorio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_LABORATORY.png" /></a><a href="BUILDING_RECYCLER.aspx" onmouseover="return tooltip('Recicladora');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RECYCLER.png" /></a></div>
        
		<h2>Recursos descubiertos:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Petr&oacute;leo');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>Acciones permitidas:</h2><div class="infobox"><a href="IMPROVEMENT_PETROL_WELL.aspx" onmouseover="return tooltip('Construir un Pozo petrol&iacute;fero');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PETROL_WELL.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>Informaci&oacute;n de la partida:</h2><div class="infobox">Permite los edificios <span class="color_highlight_building">Laboratorio</span> y <span class="color_highlight_building">Recicladora</span>. Permite a los Trabajadores construir la mejora de casilla <span class="color_highlight_improvement">Pozo petrol&iacute;fero</span>. Revela el recurso <span class"color_highlight_resource">Petr&oacute;leo</span> en el mapa.</div>
		
		<h2>Cita:</h2><div class="infobox">"Un mundo con cuatro mil millones de a&ntilde;os en recursos, compartido por apenas un pu&ntilde;ado de personas... ¡Aqu&iacute; vamos a hacer una fortuna!"<br />- Hutama, Todos estamos destinados a prosperar</div>
		<h2>Historia</h2><div class="infobox">Desde la &eacute;poca antigua en la que Bacon, Boyle, Hooke y Mayow comenzaron a remodelar la alquimia para convertirla en una disciplina cient&iacute;fica, aportando rigor y orden al estudio de los elementos, la qu&iacute;mica ha sido uno de los campos de investigaci&oacute;n m&aacute;s vitales. Desde que se codificaron sus leyes y se comprendi&oacute; la naturaleza de la materia, la qu&iacute;mica ha sido un aspecto vital del desarrollo industrial y cient&iacute;fico. Cuando la humanidad entr&oacute; en el espacio se abrieron nuevos sectores, como la astroqu&iacute;mica, la qu&iacute;mica supramolecular y la qu&iacute;mica organomet&aacute;lica. Los nuevos planetas ofrecen nuevos descubrimientos, como la firaxita y la piedra flotante, que a su vez llevan la investigaci&oacute;n qu&iacute;mica por nuevos e inesperados derroteros. Se puede decir sin temor a equivocarnos que, de las ciencias aplicadas, la qu&iacute;mica es la m&aacute;s vital para que la colonizaci&oacute;n humana del cosmos sea un &eacute;xito.</div>
	</div>
</asp:Content>

