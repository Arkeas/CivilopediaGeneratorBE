<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 地球景观</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">地球景观</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_TERRASCAPE.png" alt="地球景观" class="contentimage" />
	<div class="contentleft">
		<h2>维护费用：</h2><div class="infobox">6 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>产出：</h2><div class="infobox">2</span><img src="/civilopediabe/images/food.png" alt="food" />食物<br />2</span><img src="/civilopediabe/images/production.png" alt="production" />生产力<br />{1_num}点<img src="/civilopediabe/images/culture.png" alt="culture" />文化值</div>
		
		
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_TERRAFORMING.aspx" onmouseover="return tooltip('地球化改造');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_TERRAFORMING.png" /></a></div>
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('冻土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('雪地');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">地球景观代表了人类对大自然进行征服的最高成就。地球景观是一种游戏后期的设施，就如同伊甸园一样。这种设施所创造出来的完美环境可以为城市提高除了能源之外的一切资源产出。这种神奇的景观是通过地球化改造实现的，可以在任何地形上修建。不过追求完美总是有代价的。地球景观不光是建设起来费时费力，其维护也会消耗大量能源。</div>
	</div>
</asp:Content>

