<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 气象控制器</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">气象控制器</div>
	<img src="/civilopediabe/images/large/UNIT_WEATHER_CONTROLLER.png" alt="气象控制器" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">130 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>轨道效果范围：</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>在轨持续时间：</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>资源需求：</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('钛');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_CLIMATE_CONTROL.aspx" onmouseover="return tooltip('气候控制');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CLIMATE_CONTROL.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">轨道单位。单元格<img src="/civilopediabe/images/food.png" alt="food" />食物+1。在其生命周期内产生1到2个新基础资源至未改良的单元格。</div>
		
		<h2>历史</h2><div class="infobox">与太阳能收集器一样，殖民地也可以利用气象控制器来改善星球上生命的生存环境。气象控制器运用精确的电磁荷子为其影响范围内的土地创造出适宜的天气。这样一来殖民地就可以提高其土地上的食物产出。另外，气象控制还可以改变未开发地区的自然环境，偶尔会生成一些基础资源。</div>
	</div>
</asp:Content>

