<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 学院</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">学院</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_ACADEMY.png" alt="学院" class="contentimage" />
	<div class="contentleft">
		<h2>维护费用：</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>产出：</h2><div class="infobox">3</span> <img src="/civilopediabe/images/research.png" alt="research" />科学</div>
		
		
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_COGNITION.aspx" onmouseover="return tooltip('认知力');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_COGNITION.png" /></a></div>
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('冻土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('雪地');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">殖民地能否生存下去直接取决于其居民的知识水平，因此正规教育成为了星际生活的一个重要组成部分。学院的职责就是保证每一个居民都拥有名为“核心文”基础的知识水平，基于这门知识，居民们可以选择任何对殖民地有益的学术路线进行深造。学院机构的设立基于殖民地的制度化原则，其所提供的教育远超过旧地球上的学校。</div>
	</div>
</asp:Content>

