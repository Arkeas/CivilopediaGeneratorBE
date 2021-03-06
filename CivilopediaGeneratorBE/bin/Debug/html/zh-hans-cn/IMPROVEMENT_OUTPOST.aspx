﻿<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 前哨站</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">前哨站</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_OUTPOST.png" alt="前哨站" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>产出：</h2><div class="infobox">无产出</div>
		
		
		
		
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('冻土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('雪地');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">用一句话简单概括，前哨站就是一座城市的雏形。这种小规模的设施可以设置在地图上，像城市一样获取领地，但暂时还没有开放城市的全部功能。前哨站中无法修建建筑、单位、或者奇迹，也不能轰炸敌方单位。前哨站的单元格虽然可以修建改良设施，也可以从这些单元格上获得资源产出，不过前哨站的边界并不能限制敌方单位的通过。<br /><br />前哨站没有远程攻击的能力，防御能力也很弱，被击败时会直接被摧毁，而不是被占领。单位可以驻扎在其中，以常规方式执行近战或远程攻击。<br /><br />每一座城市都会经历这个前哨站的阶段，唯一例外是玩家的首都，这座你在游戏初期就建立的城市不必经历前哨站阶段。首都的建设是在一开始就完成的，而接下来建立的其他城市一开始都是前哨站。</div>
	</div>
</asp:Content>

