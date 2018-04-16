<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Biology</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Biology</div>
	<img src="/civilopediabe/images/large/TECH_BIOLOGY.png" alt="Biology" class="contentimage" />
	<div class="contentleft">
		<h2>Cost:</h2><div class="infobox">925 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>Units Unlocked:</h2><div class="infobox"><a href="UNIT_PAEAN.aspx" onmouseover="return tooltip('Paean');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_PAEAN.png" /></a></div>
		<h2>Buildings Unlocked:</h2><div class="infobox"><a href="BUILDING_BIOFUEL_PLANT.aspx" onmouseover="return tooltip('Biofuel Plant');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_BIOFUEL_PLANT.png" /></a><a href="BUILDING_GROWLAB.aspx" onmouseover="return tooltip('Growlab');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_GROWLAB.png" /></a></div>
        
		
		
		
	</div>	
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Allows the <span class="color_highlight_unit">Paean</span> orbital unit. Allows the <span class="color_highlight_building">Biofuel Plant</span> and <span class="color_highlight_building">Growlab</span> buildings. Improves the <img src="/civilopediabe/images/research.png" alt="research" /> Science output of your <span class="color_highlight_improvement">Beds</span>.</div>
		<h2>Special Abilities:</h2><div class="infobox">Bed <img src="/civilopediabe/images/science.png" /> Science yield improved by 1<br /></div>
		<h2>Quote:</h2><div class="infobox">"In your veins runs iron made from the heart of a long-dead star. Such does the universe love life."<br />- Samatar Jama Barre, This is Not Exile</div>
		<h2>History</h2><div class="infobox">In taming any planet, especially one so alien to human life, research in the natural sciences is crucial for survival. Perhaps none moreso, biology is one of the oldest means of understanding our surroundings. Shortly after planetfall, colonial biologists were seeking to make sense of the flora and fauna of this world in every discipline from epigenetics to paleontology. Among their million tasks was the effort to adapt Earth lifeforms to this new ecology, or at the least develop means whereby the familiar domesticated plants and animals could contribute to human health and well-being here. Hence, many settlements now have greenhouses, vivariums, botanical gardens, and specialized labs integrated into the civic landscape.</div>
	</div>
</asp:Content>

