<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Weather Controller</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Weather Controller</div>
	<img src="/civilopediabe/images/large/UNIT_WEATHER_CONTROLLER.png" alt="Weather Controller" class="contentimage" />
	<div class="contentleft">
		<h2>Cost:</h2><div class="infobox">180 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>Orbital Effect Range:</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>Orbital Turn Duration:</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		
		<h2>Required Resources:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Petroleum');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Titanium');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>Prerequisite Techs:</h2><div class="infobox"><a href="TECH_CLIMATE_CONTROL.aspx" onmouseover="return tooltip('Climate Control');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CLIMATE_CONTROL.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Orbital Unit. +1 <img src="/civilopediabe/images/food.png" alt="food" /> Food on tiles you own. Generates 1 to 2 new Basic Resources on unimproved tiles across its lifespan.</div>
		
		
		<h2>History</h2><div class="infobox">Similar to the Solar Collector, the Weather Controller allows a colony to utilize their orbital network for the purpose of enriching their planetary lives. Weather Controllers utilize precise electrical-magnetic charges to create favorable weather for all tiles within its range. This allows a colony to optimize their Food production, increasing their stores per owned tile. As an added bonus, the controlled weather has been known to change the nature of unimproved areas, allowing them to occasionally spawn Basic Resources.</div>
	</div>
</asp:Content>

