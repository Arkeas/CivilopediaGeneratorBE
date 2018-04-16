<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Melee Combat Results</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Melee Combat Results</div>
	<div class="contentwide">
		<h2>Summary:</h2><div class="infobox">Units use up all of their movement when attacking in melee. Their turn ends upon launching the attack.<br />A melee attack will result in a variable number of lost hit points to each side, deducted from the current total a unit has. If the hit point value reaches 0, the unit is eliminated. If the defending unit is eliminated, the attacker occupies its tile. If the attacker is eliminated, the defending unit remains in place.</div>
	</div>
</asp:Content>

