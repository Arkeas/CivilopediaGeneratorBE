<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 生物井</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">生物井</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_BIOWELL.png" alt="生物井" class="contentimage" />
	<div class="contentleft">
		<h2>维护费用：</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		<h2>健康度：</h2><div class="infobox">1 <img src="/civilopediabe/images/health.png" alt="health" /></div>
		<h2>产出：</h2><div class="infobox">2</span><img src="/civilopediabe/images/food.png" alt="food" />食物</div>
		
		
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_BIONICS.aspx" onmouseover="return tooltip('仿生学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_BIONICS.png" /></a></div>
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('冻土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">追求和谐理想的人一定会被生物井这种游戏后期设施所吸引，设计这种设施是为了让人类和自然可以更加融洽的相处。生物井是一种经过生物工程改造的、自给自足的的建筑。它通过整合自然环境创造出适宜居住的地形。这些“与自然融为一体”的建筑可以让殖民地的居民在仍然享受城市生活便利的前提下居住在大自然中。</div>
	</div>
</asp:Content>

