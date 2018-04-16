<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Combat Damage</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Combat Damage</div>
	<div class="contentwide">
		<h2>Summary:</h2><div class="infobox">A fully healthy unit has 100 “hit points.” When a unit takes damage during combat it loses HPs, and if it reaches 0 HPs, it is destroyed. A unit that has taken damage is weaker than a healthy unit, and it is closer to destruction.<br />A damaged unit is less effective when attacking than a fully-healed unit. The more damaged the unit, the less its attack – melee or ranged – will damage an opponent. The actual formula is more complex than this, but as a general rule a unit’s damage output is reduced by half the percentage of hit points that it has lost. In other words, a unit that has lost 50 hit points (50%) has the amount of damage it does reduced by 25%, and the damage a unit that has lost 90 hit points (90%) inflicts, is reduced by 45%.</div>
	</div>
</asp:Content>

