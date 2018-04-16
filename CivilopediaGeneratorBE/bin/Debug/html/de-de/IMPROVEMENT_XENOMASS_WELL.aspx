<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Xenomasse-Brunnen</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Xenomasse-Brunnen</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_XENOMASS_WELL.png" alt="Xenomasse-Brunnen" class="contentimage" />
	<div class="contentleft">
		<h2>Unterhalt:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>Ertrag:</h2><div class="infobox">+3 <img src="/civilopediabe/images/food.png" alt="food" /> Nahrung durch <img src="/civilopediabe/images/xenomass.png" alt="xenomass" /> Xenomasse</div>
		
		
		<h2>Modernisiert Ressourcen:</h2><div class="infobox"><a href="RESOURCE_XENOMASS.aspx" onmouseover="return tooltip('Xenomasse');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_XENOMASS.png" /></a></div>
		<h2>Benötigte Technologie:</h2><div class="infobox"><a href="TECH_ALIEN_SCIENCES.aspx" onmouseover="return tooltip('Alien-Wissenschaften');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ALIEN_SCIENCES.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Spielinformationen:</h2><div class="infobox">Durch den Einsatz von Brunnen können Kolonien die nat&uuml;rlich produzierte Energie ihrer neuen Welt nutzen. Erdöl existiert zwar auch noch, doch erst die neuen Ressourcen sorgen daf&uuml;r, dass Bohrungen noch immer ein wichtiger Teil der menschlichen Industrie sind. Wenn Brunnen auf Trockenland gebaut werden, bieten sie Zugang zu den dringend benötigten geothermischen und Xenomasse-Ressourcen.</div>
	</div>
</asp:Content>

