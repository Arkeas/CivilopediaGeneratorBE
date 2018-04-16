<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: アカデミー</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">アカデミー</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_ACADEMY.png" alt="アカデミー" class="contentimage" />
	<div class="contentleft">
		<h2>維持費:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>生産:</h2><div class="infobox">3</span><img src="/civilopediabe/images/research.png" alt="research" />科学力</div>
		
		
		
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_COGNITION.aspx" onmouseover="return tooltip('認知');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_COGNITION.png" /></a></div>
		<h2>建設可能な場所:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('ツンドラ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('氷土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">コロニーの存続はその住人の知識レベルに直接左右されることから、体系化された教育は、異星生活の重要な一部となっている。アカデミーの使命は、"コアテキスト"と呼ばれる基本知識を全市民に習得させることにあり、人々はそうした知識を身につけた上で、自分がもっともコロニーに貢献できる道を模索していく。アカデミーのプログラムはコロニーの一般教理に基づいて構成される一方、そこで受けられる教育の質は、かつての地球に存在したあらゆる教育機関を凌駕するレベルにある。</div>
	</div>
</asp:Content>

