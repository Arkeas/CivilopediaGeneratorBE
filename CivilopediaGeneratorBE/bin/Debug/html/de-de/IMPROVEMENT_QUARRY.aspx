<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Steinbruch</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Steinbruch</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_QUARRY.png" alt="Steinbruch" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Ertrag:</h2><div class="infobox">+1 <img src="/civilopediabe/images/production.png" alt="production" /> Produktion durch <img src="/civilopediabe/images/basalt.png" alt="basalt" /> Basalt</div>
		
		
		<h2>Modernisiert Ressourcen:</h2><div class="infobox"><a href="RESOURCE_BASALT.aspx" onmouseover="return tooltip('Basalt');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_BASALT.png" /></a></div>
		
		
	</div>
	<div class="contentright">
		<h2>Spielinformationen:</h2><div class="infobox">Durch den Einsatz von Steinbr&uuml;chen können Kolonien auf fremden Welten wertvolle Steine und Mineralien produzieren. Ein aktiver Steinbruch verbessert nicht nur die Produktion, sondern kann auch Zugang zu Schwebstein bieten, einem extrem wertvollen Mineral, das aufgrund seiner molekularen Dichte den Gesetzen der Schwerkraft trotzen kann.</div>
	</div>
</asp:Content>

