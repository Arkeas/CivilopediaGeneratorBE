<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Farm</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Farm</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FARM.png" alt="Farm" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Yields:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> Food</div>
		
		
		
		
		<h2>Can Be Built On:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('Grassland');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('Plains');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('Desert');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_COAST.aspx" onmouseover="return tooltip('Coast');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_COAST.png" /></a><a href="TERRAIN_OCEAN.aspx" onmouseover="return tooltip('Ocean');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_OCEAN.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Faced with the uncertainty of an alien landscape, Farming has become humanity’s surest chance of survival, as it allows for the production of resources known to be safe and edible. Farms can be constructed on Plains, Deserts, and Grassland, improving the city’s food output.</div>
	</div>
</asp:Content>

