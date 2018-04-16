<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Plankton</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Plankton</div>
	<img src="/civilopediabe/images/large/RESOURCE_PLANKTON.png" alt="Plankton" class="contentimage" />
	<div class="contentleft">
		<h2>Yields:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/research.png" alt="research" /> Science</div>
		
		<h2>Terrains Found On:</h2><div class="infobox"><a href="TERRAIN_OCEAN.aspx" onmouseover="return tooltip('Ocean');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_OCEAN.png" /></a></div>
		<h2>Improved by:</h2><div class="infobox"><a href="IMPROVEMENT_FISHERY.aspx" onmouseover="return tooltip('Fishery');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_FISHERY.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>History</h2><div class="infobox">The most nitrogen and phosphorous rich parts of the ocean are home to an immense diversity of species, many of which are too small to hunt for, or even see. These species can be collected and used for scientific research, and may prove to be a new source of energy. <br /> <br />The phytoplankton conduct photosynthesis in a radically different way from any life found on Earth. Their method, which utilizes an incredibly broad spectrum of light, allows them to continue to produce energy even at night. Additionally, many of these phytoplankton contain cyanotoxins and cytotoxins, which, though potentially dangerous, may also be useful in disease research and treatment.</div>
	</div>
</asp:Content>

