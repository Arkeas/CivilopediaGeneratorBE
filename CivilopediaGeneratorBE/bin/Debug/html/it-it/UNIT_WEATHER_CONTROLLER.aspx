<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Controllore meteorologico</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Controllore meteorologico</div>
	<img src="/civilopediabe/images/large/UNIT_WEATHER_CONTROLLER.png" alt="Controllore meteorologico" class="contentimage" />
	<div class="contentleft">
		<h2>Costo:</h2><div class="infobox">130 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>Raggio d'effetto orbitale:</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>Durata turno orbitale:</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>Risorse richieste:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Petrolio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Titanio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>Tecnologie propedeutiche:</h2><div class="infobox"><a href="TECH_CLIMATE_CONTROL.aspx" onmouseover="return tooltip('Controllo climatico');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CLIMATE_CONTROL.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">Unit&agrave; orbitante. +1 <img src="/civilopediabe/images/food.png" alt="food" /> Cibo nelle caselle che ti appartengono. Nel corso della sua vita genera 1 o 2 nuove risorse base su caselle non migliorate.</div>
		
		<h2>Storia:</h2><div class="infobox">Come il Collettore solare, anche il Controllore meteorologico permette alle colonie di usare la propria rete orbitale per rendere pi&ugrave; prospera la vita sul pianeta. I Controllori meteorologici sfruttano precise cariche elettromagnetiche per creare condizioni meteo favorevoli su tutte le caselle all'interno del loro raggio d'azione. In questo modo le colonie possono ottimizzare la produzione di Cibo, incrementando le proprie scorte per casella posseduta. Inoltre, il Controllore meteorologico può modificare la natura delle caselle non migliorate, facendo occasionalmente emergere delle risorse base.</div>
	</div>
</asp:Content>

