<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Biologia</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Biologia</div>
	<img src="/civilopediabe/images/large/TECH_BIOLOGY.png" alt="Biologia" class="contentimage" />
	<div class="contentleft">
		<h2>Costo:</h2><div class="infobox">770 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>Edifici sbloccati:</h2><div class="infobox"><a href="BUILDING_BIOFUEL_PLANT.aspx" onmouseover="return tooltip('Raffineria di biocarburante');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_BIOFUEL_PLANT.png" /></a><a href="BUILDING_GROWLAB.aspx" onmouseover="return tooltip('Serra sperimentale');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_GROWLAB.png" /></a></div>
        
		
		<h2>Azioni permesse:</h2><div class="infobox"><a href="IMPROVEMENT_DOME.aspx" onmouseover="return tooltip('Costruisci una Cupola');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_DOME.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">Permette la costruzione degli edifici <span class="color_highlight_building">Raffineria di biocarburante</span> e <span class="color_highlight_building">Serra sperimentale</span>. Permette ai Lavoratori di costruire nelle caselle il miglioramento <span class="color_highlight_improvement">Cupola</span>.</div>
		
		<h2>Citazione:</h2><div class="infobox">"Nelle vostre vene scorre ferro prodotto nel cuore di una stella morta da tanto tempo. Così tanto l'universo ama la vita."<br />- Samatar Jama Barre, Questo non &egrave; un esilio</div>
		<h2>Storia:</h2><div class="infobox">Nel processo di addomesticazione di un pianeta, specialmente uno così alieno alla vita umana, la ricerca nel campo delle scienze naturali &egrave; cruciale per la sopravvivenza. A maggior ragione, la biologia rimane il metodo pi&ugrave; antico per comprendere l'ambiente circostante. Poco dopo l'atterraggio sul pianeta, i biologi coloniali tentarono di comprendere la flora e la fauna del pianeta in ogni loro aspetto, dall'epigenetica alla paleontologia. Nel mezzo dei loro milioni di compiti c'era anche il tentativo di adattare le forme di vita della Terra a questa nuova ecologia, o almeno sviluppare mezzi con cui le piante e gli animali conosciuti e addomesticati potessero contribuire alla vita e al benessere umano su questo pianeta. Per questo motivo, molti nuovi insediamenti oggi possiedono serre, vivai e giardini botanici, oltre a laboratori specializzati integrati negli spazi civili.</div>
	</div>
</asp:Content>

