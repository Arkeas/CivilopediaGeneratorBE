<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Expending Movement Points</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Expending Movement Points</div>
	<div class="contentwide">
		<h2>Summary:</h2><div class="infobox">Units expend MPs to enter tiles. The terrain of the tile a unit is entering determines the MP cost of the move. It doesn’t cost anything to leave your current tile; the MP cost is only calculated by the tile you’re entering.<br /><br />Generally, open terrain like Grassland and Plains costs 1 MP to enter, while Forest and Hills costs 2. It also expends all of a unit’s MPs to cross a river.<br /><br />A unit can always move one tile if it has any MPs left. It doesn’t matter how high the movement costs of the tile being entered is; as long as the unit has some MP left, it can enter. Once the unit has expended all of its MPs, it must stop moving until the next turn.</div>
	</div>
</asp:Content>

