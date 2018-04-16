<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Specialists</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Specialists</div>
	<div class="contentwide">
		<h2>Summary:</h2><div class="infobox">When a City is first created, all of its Citizens (<img src="/civilopediabe/images/citizen.png" alt="citizen" /> Population) will work the tiles around the City, generating Food, Production, Energy, etc. Later, you can construct certain Buildings which allow you to reassign some of the Citizens to work in each as Specialists. There are six different types of Specialists:<br /><br />Artist:<br />An Artist Specialist creates Culture. Place them in a Culture-related Building such as the Holosuite or CEL Cradle for extra Culture points.<br /><br />Engineer:<br />An Engineer Specialist increases Production; assign them to the Production-related Buildings such as Autoplants and Node Banks.<br /><br />Grower:<br />Growers are agronomists, specialized in the increase of Food. Growers must be assigned to Food-related Buildings such as Cloning Plants and Mass Digesters.<br /><br />Scientist:<br />A Scientist Specialist creates additional beakers for research in new Technologies when assigned to a Science-related Building such as the Xenonursery or the Institute.<br /><br />Trader:<br />Trader Specialists generate extra Energy, the local form of wealth. Traders can be assigned to Energy-related Buildings such as Thorium Reactors and Xenofuel Plants.<br /><br />Unemployed Citizens:<br />If a Citizen is neither working a tile nor another type of specialist he/she is considered part of the general labor pool. An unemployed Citizen automatically generates Production but is not assigned to a specific Building.</div>
	</div>
</asp:Content>

