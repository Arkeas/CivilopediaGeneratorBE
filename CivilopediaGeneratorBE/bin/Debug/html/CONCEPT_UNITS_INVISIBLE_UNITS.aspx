<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Invisible Units</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Invisible Units</div>
	<div class="contentwide">
		<h2>Summary:</h2><div class="infobox">Invisible units are units that cannot be perceived by enemy forces. This means an enemy cannot see them when they move, and cannot target them for attack with their own units. Invisibility is a permanent trait of the unit, and does not need to be activated. However, invisible units <span class="color_warning_text">can be spotted</span> if they are not careful. Events that will reveal invisible units include:<br /><br />[ICON_BULLET]The unit moves to a tile adjacent to any enemy unit, outpost, or city.<br /><br />[ICON_BULLET]The unit moves within range of a city with an extended Invisibility sight radius (such as an aquatic city with a [COLOR_YELLOW]Sonar Net</span> building).<br /><br />[ICON_BULLET]The unit performs a ranged attack on any enemy unit.<br /><br />When an invisible unit is preparing to move, warning icons will appear on those hexes that would reveal the unit if it were to move there. Or, if an invisible unit was spotted because it attacked, moving the unit from its attack position to a different, concealed location will restore its invisibility.</div>
	</div>
</asp:Content>

