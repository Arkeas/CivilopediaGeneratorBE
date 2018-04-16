<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: バイオウェル</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">バイオウェル</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_BIOWELL.png" alt="バイオウェル" class="contentimage" />
	<div class="contentleft">
		<h2>維持費:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		<h2>健康: </h2><div class="infobox">1 <img src="/civilopediabe/images/health.png" alt="health" /></div>
		<h2>生産:</h2><div class="infobox">2</span><img src="/civilopediabe/images/food.png" alt="food" />食料</div>
		
		
		
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_BIONICS.aspx" onmouseover="return tooltip('バイオニクス');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_BIONICS.png" /></a></div>
		<h2>建設可能な場所:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('ツンドラ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">調和派の理念と共鳴するバイオウェルは、人類と自然を緊密に結びつける、ゲーム終盤の資源活用施設である。バイオエンジニアリングの産物であるこの自律的な施設は、様々な自然環境を組み合わせて、生き生きとした、形ある風景を作り出すことができる。こうした"自然な"構造物が、入植者たちに都市生活の利便性を享受しつつ、自然の中で暮らすことを可能にする。</div>
	</div>
</asp:Content>

