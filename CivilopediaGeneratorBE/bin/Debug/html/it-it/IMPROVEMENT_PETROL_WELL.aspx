<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Pozzo di petrolio</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Pozzo di petrolio</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PETROL_WELL.png" alt="Pozzo di petrolio" class="contentimage" />
	<div class="contentleft">
		
		<h2>Salute:</h2><div class="infobox">1 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>Prodotti:</h2><div class="infobox">+2 <img src="/civilopediabe/images/energy.png" alt="energy" /> Energia da <img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> Petrolio<br />+1 <img src="/civilopediabe/images/production.png" alt="production" /> Produzione da <img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> Petrolio</div>
		
		
		<h2>Migliora le risorse:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Petrolio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>Tecnologie propedeutiche:</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('Chimica');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">Tramite l'uso dei Pozzi, i coloni possono sfruttare l'energia naturalmente prodotta dal loro nuovo mondo. Sebbene il Petrolio esista ancora, sono le nuove risorse ad assicurare un ruolo ancora di primo piano nell'ambito dell'attivit&agrave; industriale umana alle trivellazioni terrestri. Non appena costruiti sulla terraferma, i Pozzi possono fornire accesso alle preziose risorse dell'Energia geotermica e della Xenomassa.</div>
	</div>
</asp:Content>

