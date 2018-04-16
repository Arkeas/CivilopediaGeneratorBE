<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 學院</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">學院</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_ACADEMY.png" alt="學院" class="contentimage" />
	<div class="contentleft">
		<h2>維護費：</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>產出：</h2><div class="infobox">3</span><img src="/civilopediabe/images/research.png" alt="research" />科技值</div>
		
		
		
		<h2>科技要求：</h2><div class="infobox"><a href="TECH_COGNITION.aspx" onmouseover="return tooltip('認知');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_COGNITION.png" /></a></div>
		<h2>可建地形：</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('凍土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('雪原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">由於殖民地的生存直接關係到人民的知識，正規化教育已成為星際生活的重要一部分。學院的責任是確保所有市民具備基本知識，稱為核心科目，之後他們可追求任何被視為對殖民地有利的方向。雖然學院的結構是以殖民地制度化的信條為基礎，他們還是設法提供比舊地球上更優越的教育。</div>
	</div>
</asp:Content>

