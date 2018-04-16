<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: テラスケープ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">テラスケープ</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_TERRASCAPE.png" alt="テラスケープ" class="contentimage" />
	<div class="contentleft">
		<h2>維持費:</h2><div class="infobox">6 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>生産:</h2><div class="infobox">2</span><img src="/civilopediabe/images/food.png" alt="food" />食料<br />2</span><img src="/civilopediabe/images/production.png" alt="production" />生産力<br /><img src="/civilopediabe/images/culture.png" alt="culture" />文化力2</div>
		
		
		
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_TERRAFORMING.aspx" onmouseover="return tooltip('テラフォーミング');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_TERRAFORMING.png" /></a></div>
		<h2>建設可能な場所:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('ツンドラ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('氷土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">テラスケープは人類が自然を征服したという究極の象徴。エネルギーを除く、都市のあらゆる生産力をアップさせる、ゲーム終盤に登場するこの資源活用施設は、さながらエデンの園のような完ぺきな楽園にも喩えられる。この驚くべき偉業はテラフォーミングによって達成され、あらゆる資源や地形の上に建設できるなど、まさに至れり尽くせりだが、それでも欠点はある。莫大な建設・維持費がかかるのだ。</div>
	</div>
</asp:Content>

