<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Erdölquelle</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Erdölquelle</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PETROL_WELL.png" alt="Erdölquelle" class="contentimage" />
	<div class="contentleft">
		
		<h2>Gesundheit:</h2><div class="infobox">1 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>Ertrag:</h2><div class="infobox">+2 <img src="/civilopediabe/images/energy.png" alt="energy" /> Energie durch <img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> Erdöl<br />+1 <img src="/civilopediabe/images/production.png" alt="production" /> Produktion durch <img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> Erdöl</div>
		
		
		<h2>Modernisiert Ressourcen:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Erdöl');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>Benötigte Technologie:</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('Chemie');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Spielinformationen:</h2><div class="infobox">Durch den Einsatz von Brunnen können Kolonien die nat&uuml;rlich produzierte Energie ihrer neuen Welt nutzen. Erdöl existiert zwar auch noch, doch erst die neuen Ressourcen sorgen daf&uuml;r, dass Bohrungen noch immer ein wichtiger Teil der menschlichen Industrie sind. Wenn Brunnen auf Trockenland gebaut werden, bieten sie Zugang zu den dringend benötigten geothermischen und Xenomasse-Ressourcen.</div>
	</div>
</asp:Content>

