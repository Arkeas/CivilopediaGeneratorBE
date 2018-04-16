<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Submarine</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Submarine</div>
	<img src="/civilopediabe/images/large/UNIT_SUBMARINE.png" alt="Submarine" class="contentimage" />
	<div class="contentleft">
		<h2>Cost:</h2><div class="infobox">120 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Combat:</h2><div class="infobox">12 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		<h2>Ranged Combat:</h2><div class="infobox">14 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>Range:</h2><div class="infobox">2 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		<h2>Movement:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>Abilities:</h2><div class="infobox"><img src="/civilopediabe/images/small/PROMOTION_CAN_MOVE_IMPASSABLE.png" onmouseover="return tooltip('Can Move Impassable');" onmouseout="return hideTip();" /><img src="/civilopediabe/images/small/PROMOTION_ONLY_DEFENSIVE.png" onmouseover="return tooltip('May Not Melee Attack');" onmouseout="return hideTip();" /></div>
		
		<h2>Prerequisite Techs:</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('Chemistry');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Naval Ranged Unit. Specializing in stealth, it excels at raiding and ambushing but has limited speed and attack range, relying on its invisibility to evade enemies.</div>
		
		<h2>Special Abilities:</h2><div class="infobox">Invisibile units cannot be seen or targeted by enemy forces unless <span class="color_warning_text">revealed.</span> The unit will be revealed if it attacks or becomes adjacent to an enemy unit, city, or outpost.</div>
		<h2>History</h2><div class="infobox">Traditionally, military submarines were designed to stealthfully ambush large surface ships, such as trade vessels or aircraft carriers, but also acted as effective recon units.<br /><br />On this new world, submarines have reprised the role they had on Earth. After overcoming the initial hurdle and adjusting the submarine's design to compliment the different water density, gravity, and composition, we were able to integrate these units back into our naval fleet.<br /><br />While these units may be effective against aliens if attacked, their primary role is hunting and assaulting heavy surface ships.</div>
	</div>
</asp:Content>

