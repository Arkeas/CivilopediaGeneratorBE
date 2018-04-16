<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 製造工廠</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">製造工廠</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MANUFACTORY.png" alt="製造工廠" class="contentimage" />
	<div class="contentleft">
		<h2>維護費：</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		<h2>健康度：</h2><div class="infobox">2 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>產出：</h2><div class="infobox">3</span><img src="/civilopediabe/images/production.png" alt="production" />生產力</div>
		
		
		
		<h2>科技要求：</h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('機器人學');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		<h2>可建地形：</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('凍土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('雪原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">雖然人類被迫在陌生的世界重新開始，但這並沒有減緩與工業的密切關係。因此，製造工廠成為外星殖民地的標準工業綜合體。這些巨型結構的設計，促進許多工業運作，如冶煉、精煉和組裝。透過將工業活動整合至製造工廠，殖民地能夠更妥善利用自己的地形，並避免困擾著舊地球城市的民間膨脹。</div>
	</div>
</asp:Content>

