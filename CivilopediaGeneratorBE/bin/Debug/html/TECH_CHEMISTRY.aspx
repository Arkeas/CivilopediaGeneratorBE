<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Chemistry</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Chemistry</div>
	<img src="/civilopediabe/images/large/TECH_CHEMISTRY.png" alt="Chemistry" class="contentimage" />
	<div class="contentleft">
		<h2>Cost:</h2><div class="infobox">115 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>Units Unlocked:</h2><div class="infobox"><a href="UNIT_SUBMARINE.aspx" onmouseover="return tooltip('Submarine');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_SUBMARINE.png" /></a></div>
		<h2>Buildings Unlocked:</h2><div class="infobox"><a href="BUILDING_LABORATORY.aspx" onmouseover="return tooltip('Laboratory');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_LABORATORY.png" /></a><a href="BUILDING_RECYCLER.aspx" onmouseover="return tooltip('Recycler');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RECYCLER.png" /></a></div>
        
		<h2>Resources Revealed:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Petroleum');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>Worker Actions Allowed:</h2><div class="infobox"><a href="IMPROVEMENT_PETROL_WELL.aspx" onmouseover="return tooltip('Construct a Petroleum Well');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PETROL_WELL.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Allows the <span class="color_highlight_unit">Submarine</span> military unit. Allows the <span class="color_highlight_building">Laboratory</span> and <span class="color_highlight_building">Recycler</span> buildings. Allows Workers to build the <span class="color_highlight_improvement">Petroleum Well</span> tile improvement. Reveals the <span class"color_highlight_resource">Petroleum</span> resource on the map.</div>
		
		<h2>Quote:</h2><div class="infobox">"A four-billion year old world's worth of resources, shared among a handful of people. We're gonna make a fortune here!"<br />- Hutama, We are All Destined to Prosper</div>
		<h2>History</h2><div class="infobox">From the ancient age when Bacon, Boyle, Hooke and Mayow began reshaping alchemy into a scientific discipline, bringing rigor and order to the study of the elements, chemistry has been one of the most vital fields of research. As the laws of chemistry were codified and the nature of matter understood, chemistry became a vital area of industrial and scientific endeavor. When Mankind pushed into space, new branches opened, such as astrochemistry, supramolecular chemistry, and organometallic chemistry. New planets bring new discoveries – such as firaxite and floatstone – which in turn drive chemical research into unexpected directions. Of the applied sciences, it can be readily said that chemistry is the most vital for the successful human colonization of the cosmos.</div>
	</div>
</asp:Content>

