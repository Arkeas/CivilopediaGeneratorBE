<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Ingegneria</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Ingegneria</div>
	<img src="/civilopediabe/images/large/TECH_ENGINEERING.png" alt="Ingegneria" class="contentimage" />
	<div class="contentleft">
		<h2>Costo:</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>Unit&agrave; sbloccate:</h2><div class="infobox"><a href="UNIT_CAVALRY.aspx" onmouseover="return tooltip('Rover da combattimento');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_CAVALRY.png" /></a></div>
		<h2>Edifici sbloccati:</h2><div class="infobox"><a href="BUILDING_THORIUM_REACTOR.aspx" onmouseover="return tooltip('Reattore a torio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_THORIUM_REACTOR.png" /></a><a href="BUILDING_REPAIR_FACILITY.aspx" onmouseover="return tooltip('Officina');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_REPAIR_FACILITY.png" /></a></div>
        
		<h2>Risorse rivelate:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Titanio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		
		
	</div>	
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">Permette la costruzione degli edifici <span class="color_highlight_building">Reattore a torio</span> e <span class="color_highlight_building">Officina</span> e dell'unit&agrave; militare <span class="color_highlight_unit">Rover da combattimento</span>. Rivela la risorsa <span class"color_highlight_resource">Titanio</span> sulla mappa.</div>
		
		<h2>Citazione:</h2><div class="infobox">"Insegnate ai bambini a non sognare giocattoli o dolciumi. Insegnate loro a sognare l'infrastruttura."<br />- Vadim Kozlov, Assiomi dai verbali del Direttorio Centrale</div>
		<h2>Storia:</h2><div class="infobox">L'applicazione di principi pratici per la progettazione e la costruzione di edifici, dispositivi, macchine e sistemi costituiscono la pietra angolare della civilt&agrave;. L'avanzamento delle scienze teoriche di solito si accompagna a progressi simili sul versante delle applicazioni pratiche, nei vari settori dell'ingegneria. Durante la Semina, ogni missione coloniale aveva i propri ingegneri meccanici, chimici, elettrici e civili. Subito dopo l'atterraggio gli ingegneri si misero al lavoro per scoprire e sviluppare nuovi materiali e metodi d'utilizzo adatti al nuovo mondo, oltre che per adattare i metodi tradizionalmente usati sulla Terra per il reperimento di acqua, minerali, energia e altri elementi essenziali alla sopravvivenza umana nelle colonie. Le conoscenze ingegneristiche sono state sfruttate tanto nel macroscopico quanto nel microscopico, dato che la nanotecnologia, con i suoi "naniti" di origine ingegneristica, &egrave; stata applicata anche alla costruzione di progetti grandiosi come le Meraviglie Planetarie.</div>
	</div>
</asp:Content>

