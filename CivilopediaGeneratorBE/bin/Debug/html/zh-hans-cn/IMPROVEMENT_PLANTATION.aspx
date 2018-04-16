<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 种植园</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">种植园</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PLANTATION.png" alt="种植园" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>产出：</h2><div class="infobox"><img src="/civilopediabe/images/fiber.png" alt="fiber" /> 纤维提供+1 <img src="/civilopediabe/images/production.png" alt="production" /> 生产力<br /><img src="/civilopediabe/images/fruit.png" alt="fruit" /> 水果提供+1 <img src="/civilopediabe/images/food.png" alt="food" /> 食物<br /><img src="/civilopediabe/images/fungus.png" alt="fungus" /> 真菌提供+1 <img src="/civilopediabe/images/food.png" alt="food" /> 食物<br /><img src="/civilopediabe/images/tubers.png" alt="tubers" /> 块茎提供+2 <img src="/civilopediabe/images/food.png" alt="food" /> 食物</div>
		
		
		<h2>获得资源：</h2><div class="infobox"><a href="RESOURCE_FIBER.aspx" onmouseover="return tooltip('纤维');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIBER.png" /></a><a href="RESOURCE_FUNGUS.aspx" onmouseover="return tooltip('真菌');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FUNGUS.png" /></a><a href="RESOURCE_FRUIT.aspx" onmouseover="return tooltip('水果');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FRUIT.png" /></a><a href="RESOURCE_TUBERS.aspx" onmouseover="return tooltip('块茎');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TUBERS.png" /></a></div>
		
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">在新的星球上，种植园从大型的户外田地升级成为了封闭的生物学建筑，使用模块化的温室来大规模生产作物。这种形式上的巨大改变使得种植园不再带有旧时地球上曾实行的奴隶制度的负面色彩，也为农业人口带来了新的转机。</div>
	</div>
</asp:Content>

