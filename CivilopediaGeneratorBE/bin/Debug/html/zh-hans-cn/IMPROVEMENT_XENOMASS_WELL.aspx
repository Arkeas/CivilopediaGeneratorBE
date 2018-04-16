<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 兹诺矿井</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">兹诺矿井</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_XENOMASS_WELL.png" alt="兹诺矿井" class="contentimage" />
	<div class="contentleft">
		<h2>维护费用：</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>产出：</h2><div class="infobox"><img src="/civilopediabe/images/xenomass.png" alt="xenomass" /> 兹诺物质提供+3 <img src="/civilopediabe/images/food.png" alt="food" /> 食物</div>
		
		
		<h2>获得资源：</h2><div class="infobox"><a href="RESOURCE_XENOMASS.aspx" onmouseover="return tooltip('兹诺物质');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_XENOMASS.png" /></a></div>
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_ALIEN_SCIENCES.aspx" onmouseover="return tooltip('异星科学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ALIEN_SCIENCES.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">通过造井的应用，殖民地可以驾驭新世界里自然生成的能源。石油依然存在的同时，对新资源的陆地钻探也是人类工业中最重要的一个部分。当修建在陆地上时，矿井也可以为殖民地获取地热和兹诺物质资源。</div>
	</div>
</asp:Content>

