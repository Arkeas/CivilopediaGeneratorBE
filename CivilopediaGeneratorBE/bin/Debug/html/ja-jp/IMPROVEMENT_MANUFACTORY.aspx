<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 複合工場</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">複合工場</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MANUFACTORY.png" alt="複合工場" class="contentimage" />
	<div class="contentleft">
		<h2>維持費:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		<h2>健康: </h2><div class="infobox">2 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>生産:</h2><div class="infobox">3</span><img src="/civilopediabe/images/production.png" alt="production" />生産力</div>
		
		
		
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('ロボット工学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		<h2>建設可能な場所:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('ツンドラ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('氷土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">異星での再出発を強いられた人類だが、物作りへの情熱は少しも衰えていなかった。それゆえ複合工場は、地球外コロニーにおける複合産業施設の定番と化している。この巨大施設は製錬、精製、組み立てといった様々な産業工程の高速化を企図して造られるが、産業活動を集中させることでコロニーの土地を有効活用することができ、かつての地球の都市を悩ませた過剰成長を回避するのにも一役買っている。</div>
	</div>
</asp:Content>

