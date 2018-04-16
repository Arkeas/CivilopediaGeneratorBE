<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Miniera di Firaxite</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Miniera di Firaxite</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FIRAXITE_MINE.png" alt="Miniera di Firaxite" class="contentimage" />
	<div class="contentleft">
		<h2>Mantenimento:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>Prodotti:</h2><div class="infobox">+3 <img src="/civilopediabe/images/research.png" alt="science" /> Scienza da <img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> Firaxite</div>
		
		
		<h2>Migliora le risorse:</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('Firaxite');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>Tecnologie propedeutiche:</h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('Robotica');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">L'importanza dell'estrazione mineraria trascende i confini terrestri: la domanda di risorse e prodotti rimane identica anche su un mondo alieno ancora intatto, dato che unit&agrave;, edifici e Meraviglie restano comunque necessari per sopravvivere. Le Miniere possono essere costruire sulle Colline per incrementarne la produttivit&agrave;. Inoltre danno accesso a risorse importanti quali il Rame, il Silice e la rarissima Firaxite.</div>
	</div>
</asp:Content>

