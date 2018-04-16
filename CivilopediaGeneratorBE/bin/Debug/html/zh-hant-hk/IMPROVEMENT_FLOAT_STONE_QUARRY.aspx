<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 浮石採石場</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">浮石採石場</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FLOAT_STONE_QUARRY.png" alt="浮石採石場" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>產出：</h2><div class="infobox">+3 來自 <img src="/civilopediabe/images/floatstone.png" alt="floatstone" /> 浮石 的 <img src="/civilopediabe/images/energy.png" alt="energy" /> 能量</div>
		
		
		<h2>改良資源：</h2><div class="infobox"><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('浮石');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
		<h2>科技要求：</h2><div class="infobox"><a href="TECH_TERRAFORMING.aspx" onmouseover="return tooltip('地球改造');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_TERRAFORMING.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">利用採石場，殖民地可以切開異族世界來生產有價值的寶石和礦物。開採的採石場不僅能提高產量，還可以提供浮石，這種極具價值的礦物其分子密度讓它能夠抵消萬有引力定律。</div>
	</div>
</asp:Content>

