<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Firaxite Mine</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Firaxite Mine</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FIRAXITE_MINE.png" alt="Firaxite Mine" class="contentimage" />
	<div class="contentleft">
		<h2>Maintenance:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>Yields:</h2><div class="infobox">+3 <img src="/civilopediabe/images/research.png" alt="science" /> Science from <img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> Firaxite.</div>
		
		
		<h2>Improves Resources:</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('Firaxite');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>Prerequisite Techs:</h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('Robotics');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">The importance of Mining transcends terrestrial boundaries. On an untouched alien world, the need for resources and production is tantamount, as they provide the units, buildings, and wonders necessary to survive. Mines can be built on basic Hills to increase productivity. They also provide access to important resources, such as Copper, Silica, and the rare Firaxite.</div>
	</div>
</asp:Content>

