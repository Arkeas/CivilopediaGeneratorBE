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
		
		
		<h2>生産:</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食料</div>
		
		
		
		
		<h2>建設可能な場所:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">予測不能な未知なる自然と対峙したとき、人類の生存確率をもっとも高めてくれる手段が、安全な食料の供給を可能にする農耕である。農場は平原、砂漠、草原タイル上に建設でき、都市の食料生産量をアップさせる。</div>
	</div>
</asp:Content>

