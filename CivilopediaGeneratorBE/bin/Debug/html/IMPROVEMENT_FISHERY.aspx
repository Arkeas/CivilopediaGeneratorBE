<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Fishery</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Fishery</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FISHERY.png" alt="Fishery" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Yields:</h2><div class="infobox">+1 <img src="/civilopediabe/images/energy.png" alt="energy" /> Energy from <img src="/civilopediabe/images/plankton.png" alt="plankton" /> Plankton.<br />+1 <img src="/civilopediabe/images/research.png" alt="science" /> Science from <img src="/civilopediabe/images/chelonia.png" alt="chelonia" /> Chelonia.</div>
		
		
		<h2>Improves Resources:</h2><div class="infobox"><a href="RESOURCE_PLANKTON.aspx" onmouseover="return tooltip('Plankton');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PLANKTON.png" /></a><a href="RESOURCE_CHELONIA.aspx" onmouseover="return tooltip('Chelonia');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CHELONIA.png" /></a></div>
		
		
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Fisheries on Old Earth were very useful to not only catch but also farm fish. The alien ecosystems presented colonists with new challenges to acquire food from the sea. Therefore, new fishing methods were developed to make use of the local Plankton and Chelonia population.</div>
	</div>
</asp:Content>

