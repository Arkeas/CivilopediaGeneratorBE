<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Multiple Turn Move Orders</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Multiple Turn Move Orders</div>
	<div class="contentwide">
		<h2>Summary:</h2><div class="infobox">If the unit requires multiple turns to reach the location, it will pick the shortest route and proceed on its way. It will continue to move each turn until it gets to the assigned location or until you give it another order.<br /><br />If it becomes impossible for the unit to reach its target location — say, because exploration reveals that the tile is across the ocean and the moving unit can’t embark, or perhaps because another unit is occupying the target location – the unit will stop and request new orders.</div>
	</div>
</asp:Content>

