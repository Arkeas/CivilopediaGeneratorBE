<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 農場</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">農場</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FARM.png" alt="農場" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>產出：</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食物</div>
		
		
		
		
		<h2>可建地形：</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">面對外星景觀的不確定性，農業成為人類最可靠的生存機會，因為它可生產已知安全可食用的資源。農場可以在平原、沙漠、草原上建造，改善城市的食物產量。</div>
	</div>
</asp:Content>

