<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: SABR</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">SABR</div>
	<img src="/civilopediabe/images/large/UNIT_SABR.png" alt="SABR" class="contentimage" />
	<div class="contentleft">
		<h2>Cost:</h2><div class="infobox">385 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Combat:</h2><div class="infobox">16 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		<h2>Ranged Combat:</h2><div class="infobox">52 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>Range:</h2><div class="infobox">3 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		<h2>Movement:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>Abilities:</h2><div class="infobox"><img src="/civilopediabe/images/small/PROMOTION_MUST_SET_UP.png" onmouseover="return tooltip('Must Set Up to Range Attack');" onmouseout="return hideTip();" /><img src="/civilopediabe/images/small/PROMOTION_ONLY_DEFENSIVE.png" onmouseover="return tooltip('May Not Melee Attack');" onmouseout="return hideTip();" /></div>
		<h2>Required Resources:</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('Firaxite');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>Prerequisite Techs:</h2><div class="infobox"><a href="TECH_SYNTHETIC_THOUGHT.aspx" onmouseover="return tooltip('Synthetic Thought');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_SYNTHETIC_THOUGHT.png" /></a></div>
		
		
		
		<h2>Affinity:</h2><div class="infobox">Requires <span class="color_supremacy_affinity"> Level 9 in <img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> Supremacy</span>.</div>
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox"><span class="color_supremacy_affinity"><img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> Supremacy Unique unit.</span> A high-precision robotic artillery platform with exceptional range and accuracy. Slow but powerful ranged and siege unit.</div>
		
		
		<h2>History</h2><div class="infobox">A military unit applies force to a particular target. To optimize the military unit, the designers can either provide the unit with more force, or soften the target. The latter point seems largely hard to control, but every military target has weak points. A weapon system that always strikes weak points can be disproportionally effective beyond the force it outputs. This resonates with certain strains of the Supremacy ideology as well.<br /><br />The Strategic Artillery Battery Robot (SABR) was created to give traditionally inefficient artillery rapier-like precision against a variety of targets. SABR is unique not because it has a particularly large gun (it does not) but because it can put the right round in the right target at just the right time to maximize damage. The drawback to SABR is that it is highly dependent on its sensor network to be online and working to be effective. This network gathers and interprets volumes of data about the targets SABR is facing. It uses meteorological sensors to correct for weather patterns and fire its rounds farther. It also uses strike damage assessment systems to  update the firing protocols for successive rounds (and feedback these systems takes some time to collect and integrate). Finally, there is a dynamic catalog of target intelligence and powerful target discrimination systems, which let SABR identify what it is facing, where the targets are hiding, and which system is best for destroying them. The end result is a weapon which fires slowly, but strikes at the very limit of physical prediction and with an efficiency that leaves even trained observers stunned.<br /><br />The combat history of SABR is one of superlatives. With a target hit/target kill ratio approaching one, simply surviving a SABR bombardment is often attributed to divine intervention. At the Planet Academy for Integrative Warfare and Weaponry there is a mangled tungsten SABR slug fired during the Battle of Wuenschell Keg. The plaque underneath it simply says: "SABR Battalion 56 fired this round. It missed."</div>
	</div>
</asp:Content>

