<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Ecology</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Ecology</div>
	<img src="/civilopediabe/images/large/TECH_ECOLOGY.png" alt="Ecology" class="contentimage" />
	<div class="contentleft">
		<h2>Cost:</h2><div class="infobox">115 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>Buildings Unlocked:</h2><div class="infobox"><a href="BUILDING_VIVARIUM.aspx" onmouseover="return tooltip('Vivarium');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_VIVARIUM.png" /></a><a href="BUILDING_ULTRASONIC_FENCE.aspx" onmouseover="return tooltip('Ultrasonic Fence');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_ULTRASONIC_FENCE.png" /></a><a href="BUILDING_THERMOHALINE_RUDDER.aspx" onmouseover="return tooltip('Thermohaline Rudder');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_THERMOHALINE_RUDDER.png" /></a></div>
        
		
		<h2>Worker Actions Allowed:</h2><div class="infobox"><a href="CONCEPT_WORKERS_CLEARINGLAND.aspx" onmouseover="return tooltip('Clear Miasma');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAFORM_CLEAR_MIASMA.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Allows the <span class="color_highlight_building">Vivarium</span>, <span class="color_highlight_building">Ultrasonic Fence</span>, and <span class="color_highlight_building">Thermohaline Rudder</span> buildings. Allows Workers to <span class="color_highlight_action">Clear Miasma</span> from any tile.</div>
		
		<h2>Quote:</h2><div class="infobox">"When Coyote learned he was the only one of his kind on the new planet, his howl echoed through the rifts and off the distant hills."<br />- The Uncle Nevercloned Stories</div>
		<h2>History</h2><div class="infobox">Due to its interdisciplinary roots, the science of ecology traces its origins to the late 1700s AD and the works of diverse scholars such as Alexander von Humboldt, James Hutton and Jean-Baptiste Lamarck. By the mid-1900s this little-remarked “science” began to expand, as concerns with unchecked human population growth, limited natural resources, climatological change and disappearing wildlife habitat became widespread among policy makers and the general populace of Earth. The aftermath of the Great Mistake brought ecology to the forefront of the applied sciences. When colonial sponsors launched their missions, ecological scientists were an important part of the effort, for it was hoped that their research would guarantee that the problems that had shattered Earth’s ecosystems might be avoided on this new homeworld.</div>
	</div>
</asp:Content>

