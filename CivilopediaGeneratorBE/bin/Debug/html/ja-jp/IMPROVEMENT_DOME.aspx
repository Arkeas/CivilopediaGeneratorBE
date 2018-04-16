<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: ドーム</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">ドーム</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_DOME.png" alt="ドーム" class="contentimage" />
	<div class="contentleft">
		<h2>維持費:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>生産:</h2><div class="infobox"><img src="/civilopediabe/images/culture.png" alt="culture" />文化力2<br /><img src="/civilopediabe/images/strength.png" alt="strength" />都市のヒットポイント: +10</div>
		
		
		
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_BIOLOGY.aspx" onmouseover="return tooltip('生物学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_BIOLOGY.png" /></a></div>
		<h2>建設可能な場所:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('ツンドラ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('氷土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">人間が暮らしやすい環境を拡張するために開発された、ゲーム終盤の高度な資源活用施設であるドームは、かつての地球のバイオスフィア同様、人為的に制御された生態系である。純血派はドームを介してかつての地球の環境を再現している。また、その巨体ゆえに、都市の防御力を高める一面もある。</div>
	</div>
</asp:Content>

