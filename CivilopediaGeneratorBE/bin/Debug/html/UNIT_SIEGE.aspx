<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Missile Rover</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Missile Rover</div>
	<img src="/civilopediabe/images/large/UNIT_SIEGE.png" alt="Missile Rover" class="contentimage" />
	<div class="contentleft">
		<h2>Cost:</h2><div class="infobox">120 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Combat:</h2><div class="infobox">3 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		<h2>Ranged Combat:</h2><div class="infobox">12 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>Range:</h2><div class="infobox">2 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		<h2>Movement:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>Abilities:</h2><div class="infobox"><img src="/civilopediabe/images/small/PROMOTION_ONLY_DEFENSIVE.png" onmouseover="return tooltip('May Not Melee Attack');" onmouseout="return hideTip();" /><img src="/civilopediabe/images/small/PROMOTION_MUST_SET_UP.png" onmouseover="return tooltip('Must Set Up to Range Attack');" onmouseout="return hideTip();" /></div>
		
		<h2>Prerequisite Techs:</h2><div class="infobox"><a href="TECH_COMPUTING.aspx" onmouseover="return tooltip('Computing');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_COMPUTING.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Ranged Unit. Specializes in reducing defenses of Cities and Outposts from afar, but has limited mobility.</div>
		
		
		<h2>History</h2><div class="infobox">What we now call Missile Rovers were originally “Space Exploration Vehicles” developed by NASA. These SEVs were included in the initial payload of most colonial missions. However, upon reaching alien worlds, the colonists found they were more in need of offensive capabilities than exploratory tools.<br /><br />Redubbing them “Missile Rover – Vehicular,” the MRVs were retrofitted to deal with indigenous wildlife. As they were designed by different colonies for various reasons, no two Missile Rovers were alike. However, they often included mounted automatic weapons for close defense and at least one ranged weapon, such as a Coilgun, for the purpose of dealing indirect damage. These original Siege Engines were very successful in suppressing alien nests, dispatching Siege Worms, and even the occasional military clash with an opposing colony.<br /><br />As MRV use became more popular, their design became more mainstream. Soon, the colonies were producing original MRVs, often improving upon the shortcomings of their retrofitted predecessors. Even now, they are undergoing a new evolution, as many MRVs now come equipped with mounts allowing for tools such as cranes, backhoes, or dozer blades. Unsurprisingly, these modified SEVs are proving equally useful in combat as in civilian construction.</div>
	</div>
</asp:Content>

