<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Gold</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Gold</div>
	<img src="/civilopediabe/images/large/RESOURCE_GOLD.png" alt="Gold" class="contentimage" />
	<div class="contentleft">
		<h2>Yields:</h2><div class="infobox">1 <img src="/civilopediabe/images/culture.png" alt="culture" /> Culture</div>
		
		<h2>Terrains Found On:</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('Hill');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('Grassland');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('Plains');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('Desert');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
		<h2>Improved by:</h2><div class="infobox"><a href="IMPROVEMENT_MINE.aspx" onmouseover="return tooltip('Mine');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_MINE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>History</h2><div class="infobox">Atomic weight 196.96; atomic number 79. Gold was highly prized on Old Earth due to its rarity (less than 0.005 parts per million), luster, malleability, and virtual indestructibility. In many countries before the Great Mistake, gold served as the standard for national currencies, and it has long been traded, hoarded and stolen in human civilization. On this planet, however, gold is fairly common in hydrothermal veins and its use – with the exception of personal jewelry – primarily industrial and technological. Gold is conductive to electricity and at the same time corrosion resistant, making it ideal for use in humid or salty environments. Its use in computers, communications equipment, semiconductors, spacecraft, and most types of engines is widespread. Gold is also vital for the efficient operation of advanced combat suits, armored vehicles, naval vessels and other military hardware. Mining and refining the plentiful native gold is a simple process, and even civilian prospectors have the capability to do so. Far from the home world, mankind’s relationship with this noble metal remains close.</div>
	</div>
</asp:Content>

