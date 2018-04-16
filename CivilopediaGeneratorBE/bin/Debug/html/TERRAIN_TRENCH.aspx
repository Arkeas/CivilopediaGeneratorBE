<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Trench</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Trench</div>
	<img src="/civilopediabe/images/large/TERRAIN_TRENCH.png" alt="Trench" class="contentimage" />
	<div class="contentleft">
		<h2>Yields:</h2><div class="infobox">No Yield</div>
		<h2>Movement Cost:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>Combat Modifier:</h2><div class="infobox">0%</div>
		
<h2>Features on:</h2><div class="infobox"><a href="FEATURE_TRENCH_BUBBLES.aspx" onmouseover="return tooltip('');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_TRENCH_BUBBLES.png" /></a></div>
		
	</div>
	<div class="contentright">
		
		<h2>Game Info:</h2><div class="infobox">Trenches offer little value for a City as they never have any Resources. They are often best used as a place to build basic Improvements such as a Farm or Generator. </div>
	</div>
</asp:Content>

