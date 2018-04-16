<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Arbeitsbarkasse</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Arbeitsbarkasse</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_WORK_BARGE.png" alt="Arbeitsbarkasse" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Ertrag:</h2><div class="infobox">+1 <img src="/civilopediabe/images/food.png" alt="food" /> Nahrung durch <img src="/civilopediabe/images/algae.png" alt="algae" /> Algen<br />+1 <img src="/civilopediabe/images/research.png" alt="science" /> Wissenschaft durch <img src="/civilopediabe/images/coral.png" alt="coral" /> Korallen<br />+1 <img src="/civilopediabe/images/production.png" alt="production" /> Produktion durch <img src="/civilopediabe/images/coral.png" alt="coral" /> Korallen</div>
		
		
		<h2>Modernisiert Ressourcen:</h2><div class="infobox"><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('Algen');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('Korallen');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a></div>
		<h2>Benötigte Technologie:</h2><div class="infobox"><a href="TECH_PLANETARY_SURVEY.aspx" onmouseover="return tooltip('Planetenvermessung');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PLANETARY_SURVEY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Spielinformationen:</h2><div class="infobox">Die Arbeitsbarkasse ist die gemeinsame Modernisierung f&uuml;r K&uuml;stenressourcen (Korallen und Algen). Diese schwimmenden Arbeitsplattformen werden in K&uuml;stenst&auml;dten gebaut und dann auf einer Position fixiert, auf der sie wertvolle Ressourcen ernten können.</div>
	</div>
</asp:Content>

