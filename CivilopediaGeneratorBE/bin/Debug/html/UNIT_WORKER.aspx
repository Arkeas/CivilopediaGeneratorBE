<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Worker</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Worker</div>
	<img src="/civilopediabe/images/large/UNIT_WORKER.png" alt="Worker" class="contentimage" />
	<div class="contentleft">
		<h2>Cost:</h2><div class="infobox">70 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		<h2>Movement:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		
		<h2>Prerequisite Techs:</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('Habitation');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Civilian Unit. Constructs Improvements on land and at sea, increasing the effectiveness of tiles when worked by a City's population.</div>
		<h2>Strategy:</h2><div class="infobox">This unit constructs roads, magrails and builds improvements like farms and mines. It cannot defend itself, so accompany it with a military unit when it is in dangerous territory.</div>
		
		<h2>History</h2><div class="infobox">If Colonists are the heart of a colony, then Workers are the blood. Workers allow a colony to utilize terrain by building improvements. Not only that, they have the ability to remove Miasma from terrain, increasing its usefulness. As a colony grows technologically, so do its Workers, who will eventually gain the ability to add Miasma or even build the Terrascape improvement.</div>
	</div>
</asp:Content>

