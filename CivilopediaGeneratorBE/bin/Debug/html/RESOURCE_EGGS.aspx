<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Eggs</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Eggs</div>
	<img src="/civilopediabe/images/large/RESOURCE_EGGS.png" alt="Eggs" class="contentimage" />
	<div class="contentleft">
		<h2>Yields:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> Food</div>
		
		<h2>Terrains Found On:</h2><div class="infobox"><a href="TERRAIN_COAST.aspx" onmouseover="return tooltip('Coast');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_COAST.png" /></a></div>
		<h2>Improved by:</h2><div class="infobox"><a href="IMPROVEMENT_BED.aspx" onmouseover="return tooltip('Bed');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_BED.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>History</h2><div class="infobox">Though our diet has changed since leaving Earth, we have found a familiar source of protein—eggs. On a planet full of insect and reptilian life, these eggs are often small, and not useful for feeding a colony. However, in certain high-oxygen areas of shallow water, the eggs grow much, much larger.<br /><br />Although our scientists are confident that this is a result of the increased oxygen, they are not in agreement about why. Most scientists believe that the eggs are able to grow larger in these areas, because more oxygen allows their mitochondria to produce more energy and facilitate more growth. However, some scientists have conducted studies showing the very opposite—that the eggs are forced to grow larger to avoid oxygen poisoning, by increasing the ratio of their mass to their surface area. Either way, we benefit from their growth, and will certainly be able to use them to help feed our colony.</div>
	</div>
</asp:Content>

