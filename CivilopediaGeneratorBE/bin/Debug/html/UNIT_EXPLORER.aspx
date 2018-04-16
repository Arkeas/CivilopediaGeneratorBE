<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Explorer</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Explorer</div>
	<img src="/civilopediabe/images/large/UNIT_EXPLORER.png" alt="Explorer" class="contentimage" />
	<div class="contentleft">
		<h2>Cost:</h2><div class="infobox">50 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Combat:</h2><div class="infobox">6 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>Movement:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>Abilities:</h2><div class="infobox"><img src="/civilopediabe/images/small/PROMOTION_IGNORE_TERRAIN_COST.png" onmouseover="return tooltip('Ignores Terrain Cost');" onmouseout="return hideTip();" /></div>
		
		<h2>Prerequisite Techs:</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('Habitation');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Exploration Unit. Ideal for scouting the terrain, opposing forces, and alien activity. Its light Combat Strength gives it modest defense, but it is not suited to full-scale warfare.</div>
		<h2>Strategy:</h2><div class="infobox">This unit explores the landscape and can build Expedition sites on Artifacts.</div>
		
		<h2>History</h2><div class="infobox">Explorers act as scouts for their colony. They can move quickly through the world, clearing the fog of war, in order to bring knowledge to their people. However, whereas a scout would care only for knowledge of the present, an Explorer is devoted to uncovering the past. At their core, they are archeologists, skilled in excavation. They can delve into derelict settlements, progenitor ruins, alien worm skeletons, even crashed satellites, providing their colony with certain bonuses.</div>
	</div>
</asp:Content>

