<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 农场</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">农场</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FARM.png" alt="农场" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>产出：</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食物</div>
		
		
		
		
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">面对着外星土地的完全未知，农业就成为了人类最有把握的生存机会，至少通过这种方式生产出来的资源是安全的、可以吃的。农场可以在平原、沙漠、草原等各种地形上修建，可以提高城市的食物产出。</div>
	</div>
</asp:Content>

