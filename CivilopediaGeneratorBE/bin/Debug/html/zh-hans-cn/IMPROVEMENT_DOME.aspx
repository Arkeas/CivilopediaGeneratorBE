<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 圆顶</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">圆顶</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_DOME.png" alt="圆顶" class="contentimage" />
	<div class="contentleft">
		<h2>维护费用：</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>产出：</h2><div class="infobox">{1_num}点<img src="/civilopediabe/images/culture.png" alt="culture" />文化值<br /><img src="/civilopediabe/images/strength.png" alt="strength" />城市生命力：+10</div>
		
		
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_BIOLOGY.aspx" onmouseover="return tooltip('生物学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_BIOLOGY.png" /></a></div>
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('冻土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('雪地');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">圆顶是一种先进的游戏后期设施，它的设计是专门为了人类的繁衍提供适宜的环境。就像旧地球上的生物圈一样，圆顶中受到精心控制的生态系统可以让纯正主义者们重现旧地球的环境。它们庞大的规模可以为城市的防御提供一定帮助。</div>
	</div>
</asp:Content>

