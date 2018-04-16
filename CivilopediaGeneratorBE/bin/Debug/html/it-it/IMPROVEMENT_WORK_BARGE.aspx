<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Chiatta</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Chiatta</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_WORK_BARGE.png" alt="Chiatta" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Prodotti:</h2><div class="infobox">+1 <img src="/civilopediabe/images/food.png" alt="food" /> Cibo da <img src="/civilopediabe/images/algae.png" alt="algae" /> le Alghe<br />+1 <img src="/civilopediabe/images/research.png" alt="science" /> Scienza da <img src="/civilopediabe/images/coral.png" alt="coral" /> Corallo<br />+1 <img src="/civilopediabe/images/production.png" alt="production" /> Produzione da <img src="/civilopediabe/images/coral.png" alt="coral" /> Corallo</div>
		
		
		<h2>Migliora le risorse:</h2><div class="infobox"><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('le Alghe');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('Corallo');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a></div>
		<h2>Tecnologie propedeutiche:</h2><div class="infobox"><a href="TECH_PLANETARY_SURVEY.aspx" onmouseover="return tooltip('Rilevazione planetaria');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PLANETARY_SURVEY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">La Chiatta rappresenta il miglioramento comune per le caselle d'acqua con risorse quali il Corallo o le Alghe. Queste piattaforme galleggianti vengono costruite nelle citt&agrave; costiere e poi rimorchiate laddove pi&ugrave; servono per sfruttare le preziose risorse.</div>
	</div>
</asp:Content>

