<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Carrier</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Carrier</div>
	<img src="/civilopediabe/images/large/UNIT_NAVAL_CARRIER.png" alt="Carrier" class="contentimage" />
	<div class="contentleft">
		<h2>Cost:</h2><div class="infobox">190 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Combat:</h2><div class="infobox">18 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>Movement:</h2><div class="infobox">3 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>Abilities:</h2><div class="infobox"><img src="/civilopediabe/images/small/PROMOTION_CARGO.png" onmouseover="return tooltip('Cargo');" onmouseout="return hideTip();" /><img src="/civilopediabe/images/small/PROMOTION_ONLY_DEFENSIVE.png" onmouseover="return tooltip('May Not Melee Attack');" onmouseout="return hideTip();" /></div>
		
		<h2>Prerequisite Techs:</h2><div class="infobox"><a href="TECH_FABRICATION.aspx" onmouseover="return tooltip('Fabrication');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_FABRICATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Support Unit. Has no attack capability of its own, but serves as a base for air units to launch operations.</div>
		
		
		<h2>History</h2><div class="infobox">It took quite some time for Carriers to appear among the extraterrestrial colonies. This was due to the high construction cost, both in resources and dry-dock facilities. As such, construction of these large, multi-purpose vessels could not begin until the necessities for survival and success had been secured.<br /><br />The initial ships were comparable to the WWII-era carriers of old Earth. They were roughly 150 to 250 meters in length with a beam of 21 to 28 meters, displacing between 9800 and 20000 tonnes. The ships included a variety of light armaments and a flight deck configured for horizontal launch of Aircraft.<br /><br />As the colony’s Aircraft began to evolve, so did their Carriers. Experimental designs led to vessels which focused on SVTOL air operations. This shift provided a number of distinctive configurations, ranging from pontoon platforms to dual-hull ships driven by nuclear hydro-pulsejets. Whether they were defending against alien life or attacking other outposts, these various Carriers proved useful for projecting air power beyond the settled fringes of the colonies.</div>
	</div>
</asp:Content>

