<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Engineering</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Engineering</div>
	<img src="/civilopediabe/images/large/TECH_ENGINEERING.png" alt="Engineering" class="contentimage" />
	<div class="contentleft">
		<h2>Cost:</h2><div class="infobox">115 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>Units Unlocked:</h2><div class="infobox"><a href="UNIT_CAVALRY.aspx" onmouseover="return tooltip('Combat Rover');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_CAVALRY.png" /></a></div>
		<h2>Buildings Unlocked:</h2><div class="infobox"><a href="BUILDING_THORIUM_REACTOR.aspx" onmouseover="return tooltip('Thorium Reactor');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_THORIUM_REACTOR.png" /></a><a href="BUILDING_REPAIR_FACILITY.aspx" onmouseover="return tooltip('Repair Facility');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_REPAIR_FACILITY.png" /></a></div>
        
		<h2>Resources Revealed:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Titanium');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		
		<h2>Gains Affinities:</h2><div class="infobox"><a href="AFFINITY_TYPE_SUPREMACY.aspx" class="affinity_type_supremacy"><img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" />Supremacy</a></div>
	</div>	
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Allows the <span class="color_highlight_building">Thorium Reactor</span> and <span class="color_highlight_building">Repair Facility</span> buildings. Allows the <span class="color_highlight_unit">Combat Rover</span> military unit. Reveals the <span class"color_highlight_resource">Titanium</span> resource on the map.</div>
		
		<h2>Quote:</h2><div class="infobox">"Instruct the children not to dream of toys or sweets. Instruct them to dream of infrastructure."<br />- Vadim Kozlov, Axioms from the Minutes of the Central Directorate</div>
		<h2>History</h2><div class="infobox">The application of practical principles to create and build structures, devices, machines and systems is the cornerstone of civilization. As theoretical science advanced, so did its applied aspects in the form of engineering. Mechanical, chemical, electrical and civil engineers were part of every colonial mission during the Seeding. Immediately upon landing, engineers were soon discovering and developing new materials and methods for use on the new world. In addition, they adapted traditional Earth methods to bring water, minerals, energy and other essentials for human survival to the colonies. Engineering extended both to the macroscopic and microscopic, as nanotechnology – with new “nanites” designed by engineers – was applied to the construction of massive projects such as the planetary Wonders.</div>
	</div>
</asp:Content>

