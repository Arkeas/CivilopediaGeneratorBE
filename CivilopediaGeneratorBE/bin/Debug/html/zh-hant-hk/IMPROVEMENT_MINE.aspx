<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 礦場</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">礦場</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MINE.png" alt="礦場" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>產出：</h2><div class="infobox">2</span><img src="/civilopediabe/images/production.png" alt="production" />生產力<br />+1 來自 <img src="/civilopediabe/images/copper.png" alt="copper" /> 銅 的 <img src="/civilopediabe/images/energy.png" alt="energy" /> 能量<br />+1 來自 <img src="/civilopediabe/images/gold.png" alt="gold" /> 黃金 的 <img src="/civilopediabe/images/culture.png" alt="culture" /> 文化<br />+1 來自 <img src="/civilopediabe/images/silica.png" alt="silica" /> 二氧化矽 的 <img src="/civilopediabe/images/research.png" alt="science" /> 科技值<br />+3 來自 <img src="/civilopediabe/images/titanium.png" alt="titanium" /> 鈦 的 <img src="/civilopediabe/images/production.png" alt="production" /> 生產力</div>
		
		
		<h2>改良資源：</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('鈦');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a><a href="RESOURCE_GOLD.aspx" onmouseover="return tooltip('黃金');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_GOLD.png" /></a><a href="RESOURCE_COPPER.aspx" onmouseover="return tooltip('銅');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_COPPER.png" /></a><a href="RESOURCE_SILICA.aspx" onmouseover="return tooltip('二氧化矽');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_SILICA.png" /></a></div>
		
		<h2>可建地形：</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('丘陵');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">採礦的重要性跨越地球的界限。在未受破壞的外星世界，對資源和生產有同等的需求，因為它們提供生存必要的單位、建築物和奇跡。礦場可以建立在基本丘陵上以提高生產率。它們還可取得重要資源，如銅、矽和稀有的火山輝晶。</div>
	</div>
</asp:Content>

