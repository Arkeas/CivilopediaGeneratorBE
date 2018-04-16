<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 矿场</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">矿场</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MINE.png" alt="矿场" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>产出：</h2><div class="infobox">2</span><img src="/civilopediabe/images/production.png" alt="production" />生产力<br /><img src="/civilopediabe/images/copper.png" alt="copper" /> 铜提供+1 <img src="/civilopediabe/images/energy.png" alt="energy" /> 能量<br /><img src="/civilopediabe/images/gold.png" alt="gold" /> 黄金提供+1 <img src="/civilopediabe/images/culture.png" alt="culture" /> 文化<br /><img src="/civilopediabe/images/silica.png" alt="silica" /> 硅土提供+1 <img src="/civilopediabe/images/research.png" alt="science" /> 科学<br /><img src="/civilopediabe/images/titanium.png" alt="titanium" /> 钛提供+3 <img src="/civilopediabe/images/production.png" alt="production" /> 生产力</div>
		
		
		<h2>获得资源：</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('钛');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a><a href="RESOURCE_GOLD.aspx" onmouseover="return tooltip('黄金');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_GOLD.png" /></a><a href="RESOURCE_COPPER.aspx" onmouseover="return tooltip('铜');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_COPPER.png" /></a><a href="RESOURCE_SILICA.aspx" onmouseover="return tooltip('硅土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_SILICA.png" /></a></div>
		
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('丘陵');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">矿业的重要性已经超出了地球的范围。在未开发的异星世界里，对于资源和生产的需求同样很高，毕竟殖民地需要各种单位、建筑、以及奇观来保证生存。矿场可以修建在丘陵地区，可以提高城市的生产力。矿场同样可以为城市获取到一些重要的资源，比如铜、硅土、和菲拉瑟晶矿。</div>
	</div>
</asp:Content>

