<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Miniera</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Miniera</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MINE.png" alt="Miniera" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Prodotti:</h2><div class="infobox">2</span> <img src="/civilopediabe/images/production.png" alt="production" /> Produzione<br />+1 <img src="/civilopediabe/images/energy.png" alt="energy" /> Energia da <img src="/civilopediabe/images/copper.png" alt="copper" /> Rame<br />+1 <img src="/civilopediabe/images/culture.png" alt="culture" /> Cultura da <img src="/civilopediabe/images/gold.png" alt="gold" /> Oro<br />+1 <img src="/civilopediabe/images/research.png" alt="science" /> Scienza da <img src="/civilopediabe/images/silica.png" alt="silica" /> Silice<br />+3 <img src="/civilopediabe/images/production.png" alt="production" /> Produzione da <img src="/civilopediabe/images/titanium.png" alt="titanium" /> Titanio</div>
		
		
		<h2>Migliora le risorse:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Titanio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a><a href="RESOURCE_GOLD.aspx" onmouseover="return tooltip('Oro');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_GOLD.png" /></a><a href="RESOURCE_COPPER.aspx" onmouseover="return tooltip('Rame');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_COPPER.png" /></a><a href="RESOURCE_SILICA.aspx" onmouseover="return tooltip('Silice');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_SILICA.png" /></a></div>
		
		<h2>Si può costruire su:</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('Collina');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">L'importanza dell'estrazione mineraria trascende i confini terrestri: la domanda di risorse e prodotti rimane identica anche su un mondo alieno ancora intatto, dato che unit&agrave;, edifici e Meraviglie restano comunque necessari per sopravvivere. Le Miniere possono essere costruire sulle Colline per incrementarne la produttivit&agrave;. Inoltre danno accesso a risorse importanti quali il Rame, il Silice e la rarissima Firaxite.</div>
	</div>
</asp:Content>

