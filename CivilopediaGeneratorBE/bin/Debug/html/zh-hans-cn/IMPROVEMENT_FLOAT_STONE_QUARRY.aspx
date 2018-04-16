<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 浮石采石场</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">浮石采石场</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FLOAT_STONE_QUARRY.png" alt="浮石采石场" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>产出：</h2><div class="infobox"><img src="/civilopediabe/images/floatstone.png" alt="floatstone" /> 浮石提供+3 <img src="/civilopediabe/images/energy.png" alt="energy" /> 能量</div>
		
		
		<h2>获得资源：</h2><div class="infobox"><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('浮石');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_TERRAFORMING.aspx" onmouseover="return tooltip('地球化改造');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_TERRAFORMING.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">通过采石场的工作，殖民地可以凿开陌生的星球，生产珍贵的石料和矿物。采石场不仅可以提高城市的生产力，还可以采集浮石，这种极其珍贵的矿物有着超高的分子密度，可以抵消重力的影响。</div>
	</div>
</asp:Content>

