<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Minerals</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Minerals</div>
	<img src="/civilopediabe/images/large/RESOURCE_MINERALS.png" alt="Minerals" class="contentimage" />
	<div class="contentleft">
		<h2>Yields:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/production.png" alt="production" /> Production</div>
		
		<h2>Terrains Found On:</h2><div class="infobox"><a href="TERRAIN_OCEAN.aspx" onmouseover="return tooltip('Ocean');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_OCEAN.png" /></a></div>
		<h2>Improved by:</h2><div class="infobox"><a href="IMPROVEMENT_MINE.aspx" onmouseover="return tooltip('Mine');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_MINE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>History</h2><div class="infobox">The variety of minerals available in the deep ocean are only somewhat different from those found on land. Some parts of the ocean have become filled with minerals and crystals to a much greater extent than others, thanks to the ocean currents. In addition to being a magnificent sight, the gems and minerals are stronger than most found on earth. The crystallographic structure of the most common mineral is identical to that of diamond and germanium, a structure which has very low atomic packing. As a result, the material weighs much less than any other material of analogous strength.</div>
	</div>
</asp:Content>

