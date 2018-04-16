<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Sunken Vehicle</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Sunken Vehicle</div>
	<img src="/civilopediabe/images/large/RESOURCE_SUNKEN_VEHICLE_OCEAN.png" alt="Sunken Vehicle" class="contentimage" />
	<div class="contentleft">
		<h2>Yields:</h2><div class="infobox">No Yield</div>
		
		<h2>Terrains Found On:</h2><div class="infobox"><a href="FEATURE_FOREST.aspx" onmouseover="return tooltip('Forest');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_FOREST.png" /></a><a href="FEATURE_MARSH.aspx" onmouseover="return tooltip('Marsh');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_MARSH.png" /></a><a href="TERRAIN_COAST.aspx" onmouseover="return tooltip('Coast');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_COAST.png" /></a><a href="TERRAIN_OCEAN.aspx" onmouseover="return tooltip('Ocean');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_OCEAN.png" /></a></div>
		<h2>Improved by:</h2><div class="infobox"><a href="IMPROVEMENT_EXPEDITION.aspx" onmouseover="return tooltip('Expedition Site');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_EXPEDITION.png" /></a></div>
	</div>
	<div class="contentright">
		
<h2>Game Info:</h2><div class="infobox">Use an Explorer unit to build an Expedition here, and you will uncover rewards.</div>
		<h2>History</h2><div class="infobox">As with the sunken spacecraft, there are also vehicles in the ocean. There is a consensus that these vehicles are from the same source as the spacecraft, but their use is debated. They might have been military vehicles to fend of the local fauna or they might have been used for transportation. By researching these vehicles, there might be some insight into this unknown race and this might yield benefits for our survival on this planet.</div>
	</div>
</asp:Content>

