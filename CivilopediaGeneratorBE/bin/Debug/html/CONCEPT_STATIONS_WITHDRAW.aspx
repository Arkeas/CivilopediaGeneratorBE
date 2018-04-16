<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Station Withdrawal</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Station Withdrawal</div>
	<div class="contentwide">
		<h2>Summary:</h2><div class="infobox">If a Station receives no trade from any player, it will eventually withdraw from the planet, vacating its position on the map and returning to a pool to potentially respawn in a new location later in the game. By default, a Station will withdraw if 35 turns elapse with no active Trade Route to any player.<br /><br />After a Station withdraws, its vacated position will be re-added to the pool of available Station spawn plots, and another Station could spawn there at any point in the future.</div>
	</div>
</asp:Content>

