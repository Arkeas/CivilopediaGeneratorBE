<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Abitazioni</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Abitazioni</div>
	<img src="/civilopediabe/images/large/TECH_HABITATION.png" alt="Abitazioni" class="contentimage" />
	<div class="contentleft">
		<h2>Costo:</h2><div class="infobox">50 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>Unit&agrave; sbloccate:</h2><div class="infobox"><a href="UNIT_WORKER.aspx" onmouseover="return tooltip('Lavoratore');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_WORKER.png" /></a><a href="UNIT_EXPLORER.aspx" onmouseover="return tooltip('Esploratore');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_EXPLORER.png" /></a><a href="UNIT_MARINE.aspx" onmouseover="return tooltip('Soldato');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_MARINE.png" /></a></div>
		<h2>Edifici sbloccati:</h2><div class="infobox"><a href="BUILDING_RELIC.aspx" onmouseover="return tooltip('Reliquia della vecchia Terra');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RELIC.png" /></a><a href="BUILDING_CLINIC.aspx" onmouseover="return tooltip('Clinica');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_CLINIC.png" /></a></div>
        
		
		
		
	</div>	
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">Permette la costruzione degli edifici <span class="color_highlight_building">Clinica</span> e <span class="color_highlight_building">Reliquia della vecchia Terra</span> e delle unit&agrave; <span class="color_highlight_unit">Lavoratore</span>, <span class="color_highlight_unit">Esploratore</span> e <span class="color_highlight_unit">Soldato</span>.</div>
		<h2>Abilit&agrave; speciali:</h2><div class="infobox">Permette di costruire ponti sui fiumi.<br /></div>
		<h2>Citazione:</h2><div class="infobox">"Una volta credevamo che il nostro destino fosse controllato dagli d&egrave;i. Man mano che abbiamo compreso la natura, abbiamo cambiato idea. Ora siamo noi a controllare il nostro destino, e speriamo che questo non cambi mai."<br />- Anonimo</div>
		<h2>Storia:</h2><div class="infobox">Insieme al cibo e all'acqua, il riparo &egrave; uno dei bisogni essenziali dell'uomo. Nel corso della storia fino al XXI secolo l'umanit&agrave; aveva vissuto il passaggio dalle capanne di mattoni di fango ai castelli dalle spesse mura e dai grattacieli di cemento a strutture prefabbricate automatizzate in grado di "auto-costruirsi". Queste strutture, sviluppate per ovviare alla carenza di alloggi a seguito del trasferimento di grandi masse di popolazione per via dell'innalzamento del livello dei mari, furono poi adottate dai coloni per la Semina. Ovviamente, in un mondo alieno il concetto di abitazione doveva includere molto pi&ugrave; dei semplici ripari: erano compresi anche magazzini, centri culturali, uffici amministrativi, eccetera, di solito costruiti immediatamente dopo gli alloggi prefabbricati.</div>
	</div>
</asp:Content>

