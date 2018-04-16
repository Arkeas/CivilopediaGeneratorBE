<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Vents</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Vents</div>
	<img src="/civilopediabe/images/large/RESOURCE_VENTS.png" alt="Vents" class="contentimage" />
	<div class="contentleft">
		<h2>Yields:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/energy.png" alt="energy" /> Energy</div>
		
		<h2>Terrains Found On:</h2><div class="infobox"><a href="TERRAIN_OCEAN.aspx" onmouseover="return tooltip('Ocean');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_OCEAN.png" /></a></div>
		<h2>Improved by:</h2><div class="infobox"><a href="IMPROVEMENT_SEA_WELL.aspx" onmouseover="return tooltip('Sea Well');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_SEA_WELL.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>History</h2><div class="infobox">In deeper parts of the ocean floor, where tectonic plates meet and collide, there are hydrothermal vents which produce immense heat not found in other parts of the ocean—temperatures high enough to melt lead. These vents can be used as a constant source of energy by constructing a thermal system to convert the heat into usable electricity.<br /> <br />The vents also provide homes for ecosystems very different from and much more primitive than those found elsewhere on the planet. Rather than living off of the energy produced by photosynthesis, these microorganisms live off of energy they produce from the carbon dioxide, sulfur, and ammonium coming from the deep ocean vents. The microbes also contain an enzyme which scientists believe may be a precursor for Acetyl coenzyme A, the molecule which creatures both on this planet and Earth use to make energy. These ecosystems should be studied further—they may be the origin of life on this planet.</div>
	</div>
</asp:Content>

