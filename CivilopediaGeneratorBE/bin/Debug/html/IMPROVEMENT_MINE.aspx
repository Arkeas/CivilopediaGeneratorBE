<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Mine</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Mine</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MINE.png" alt="Mine" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Yields:</h2><div class="infobox">2</span> <img src="/civilopediabe/images/production.png" alt="production" /> Production<br />+3 <img src="/civilopediabe/images/production.png" alt="production" /> Production from <img src="/civilopediabe/images/titanium.png" alt="titanium" /> Titanium.<br />+1 <img src="/civilopediabe/images/energy.png" alt="energy" /> Energy from <img src="/civilopediabe/images/minerals.png" alt="minerals" /> Minerals.<br />+1 <img src="/civilopediabe/images/research.png" alt="science" /> Science from <img src="/civilopediabe/images/silica.png" alt="silica" /> Silica.<br />+1 <img src="/civilopediabe/images/culture.png" alt="culture" /> Culture from <img src="/civilopediabe/images/gold.png" alt="gold" /> Gold.<br />+1 <img src="/civilopediabe/images/energy.png" alt="energy" /> Energy from <img src="/civilopediabe/images/copper.png" alt="copper" /> Copper.</div>
		
		
		<h2>Improves Resources:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Titanium');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a><a href="RESOURCE_GOLD.aspx" onmouseover="return tooltip('Gold');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_GOLD.png" /></a><a href="RESOURCE_COPPER.aspx" onmouseover="return tooltip('Copper');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_COPPER.png" /></a><a href="RESOURCE_MINERALS.aspx" onmouseover="return tooltip('Minerals');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_MINERALS.png" /></a><a href="RESOURCE_SILICA.aspx" onmouseover="return tooltip('Silica');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_SILICA.png" /></a></div>
		
		<h2>Can Be Built On:</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('Hill');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">The importance of Mining transcends terrestrial boundaries. On an untouched alien world, the need for resources and production is tantamount, as they provide the units, buildings, and wonders necessary to survive. Mines can be built on basic Hills to increase productivity. They also provide access to important resources, such as Copper, Silica, and the rare Firaxite.</div>
	</div>
</asp:Content>

