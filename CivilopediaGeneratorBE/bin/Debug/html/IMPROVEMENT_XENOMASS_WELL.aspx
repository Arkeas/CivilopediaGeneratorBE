<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Xenomass Well</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Xenomass Well</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_XENOMASS_WELL.png" alt="Xenomass Well" class="contentimage" />
	<div class="contentleft">
		<h2>Maintenance:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>Yields:</h2><div class="infobox">+3 <img src="/civilopediabe/images/food.png" alt="food" /> Food from <img src="/civilopediabe/images/xenomass.png" alt="xenomass" /> Xenomass.</div>
		
		
		<h2>Improves Resources:</h2><div class="infobox"><a href="RESOURCE_XENOMASS.aspx" onmouseover="return tooltip('Xenomass');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_XENOMASS.png" /></a></div>
		<h2>Prerequisite Techs:</h2><div class="infobox"><a href="TECH_ALIEN_SCIENCES.aspx" onmouseover="return tooltip('Alien Sciences');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ALIEN_SCIENCES.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Through the use of Wells, colonies can harness the naturally produced Energy of their new world. While Petroleum still exists, it is the new resources which ensure dry-land drilling remains an important part of human industry. When built on dry-land, Wells can provide access to much needed Geothermal and Xenomass resources.</div>
	</div>
</asp:Content>

