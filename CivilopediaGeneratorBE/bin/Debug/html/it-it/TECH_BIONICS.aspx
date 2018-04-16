<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Bionica</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Bionica</div>
	<img src="/civilopediabe/images/large/TECH_BIONICS.png" alt="Bionica" class="contentimage" />
	<div class="contentleft">
		<h2>Costo:</h2><div class="infobox">770 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>Edifici sbloccati:</h2><div class="infobox"><a href="BUILDING_BIONICS_LAB.aspx" onmouseover="return tooltip('Laboratorio di bionica');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_BIONICS_LAB.png" /></a><a href="BUILDING_INSTITUTE.aspx" onmouseover="return tooltip('Istituto');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_INSTITUTE.png" /></a></div>
        
		
		<h2>Azioni permesse:</h2><div class="infobox"><a href="IMPROVEMENT_BIOWELL.aspx" onmouseover="return tooltip('Costruisci un Biopozzo');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_BIOWELL.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">Permette la costruzione degli edifici <span class="color_highlight_building">Laboratorio di bionica</span> e <span class="color_highlight_building">Istituto</span>. Permette ai Lavoratori di costruire nelle caselle il miglioramento <span class="color_highlight_improvement">Biopozzo</span>.</div>
		
		<h2>Citazione:</h2><div class="infobox">"Di notte, se tendi l'orecchio, talvolta puoi ancora sentire Casey Jones, la Palla di Cannone di Wabash, che corre a cento all'ora con le sue gambe di ferro!"<br />- Le Storie di Zio Mai-clonato</div>
		<h2>Storia:</h2><div class="infobox">L'ingegneria creativa bionica (semplicemente "bionica"), divenuta popolare sulla vecchia Terra durante gli anni '70, &egrave; l'applicazione di sistemi biologici a progetti di ingegneria tecnica. Come sottolineato dai sostenitori della bionica, la spinta evolutiva forza le specie in natura a diventare estremamente efficienti per sopravvivere; così si può tentare di introdurre lo stesso processo nella progettazione di materiali e meccaniche. Nell'ambito della scienza dei materiali, su questo pianeta la bionica comprende l'imitazione delle sostanze naturali e include soluzioni simili al "velcro" della vecchia Terra, resilina, cristalli liquidi colesterici, chip neuromorfici e retine di silicio. Recentemente, le ricerche pi&ugrave; significative da parte dei coloni nell'ambito della bionica si sono concentrate sull'informatica, portando alla produzione di neuroni artificiali, sistemi neurali e reti a mentalit&agrave; distribuita. I laboratori di bionica sul pianeta sono aumentati, mentre scienziati e ingegneri sono costantemente alla ricerca di nuove applicazioni per le loro scoperte.</div>
	</div>
</asp:Content>

