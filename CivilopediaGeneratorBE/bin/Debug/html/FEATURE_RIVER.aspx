<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Rivers</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Rivers</div>
	<img src="/civilopediabe/images/large/FEATURE_RIVER.png" alt="Rivers" class="contentimage" />
	<div class="contentleft">
		<h2>Yields:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/energy.png" alt="energy" /> Energy</div>
		<h2>Movement Cost:</h2><div class="infobox">All Remaining Points <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>Combat Modifier:</h2><div class="infobox">-20%</div>
		
		
	</div>
	<div class="contentright">
		
		<h2>Game Info:</h2><div class="infobox">When worked by cities, tiles adjacent to rivers receive a bonus of 1 Energy. Further, rivers are sources of fresh water, allowing the construction of farms on adjacent hills and tundra. Units expend all of their movement points when crossing rivers. This is not the case if the tiles are connected by roads or magrails. Finally, units receive a -20% penalty when they are attacking across a river.</div>
	</div>
</asp:Content>

