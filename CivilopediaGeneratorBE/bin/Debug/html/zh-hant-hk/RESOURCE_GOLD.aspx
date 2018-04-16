<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 黃金</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">黃金</div>
	<img src="/civilopediabe/images/large/RESOURCE_GOLD.png" alt="黃金" class="contentimage" />
	<div class="contentleft">
		<h2>產出：</h2><div class="infobox">1 <img src="/civilopediabe/images/culture.png" alt="culture" />文化值</div>
		
		<h2>出現地形：</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('丘陵');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
		<h2>改良設施：</h2><div class="infobox"><a href="IMPROVEMENT_MINE.aspx" onmouseover="return tooltip('礦場');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_MINE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>歷史</h2><div class="infobox">原子重量為 196.96；園子編號為 79 的黃金，因其稀有性、光澤、延展性及實際上的物質不滅特性，在舊地球上被高度重視（每百萬少於 0.005）。在天大浩劫前的許多世紀，黃金被做為各國貨幣的標準，在人類文明中，被長期進行交易、收集和偷取。但在此星球上，黃金卻在熱液礦脈相當常見，且其用途 – 不作為個人珠寶 – 主要是工業和科技用途。黃金具導電性，但同時具耐腐蝕性，使得在潮濕或高鹽度的環境下最事宜使用黃金。其在電腦、通訊設備、半導體、太空載具和多種引擎類型上的使用非常普遍。黃金對於先進的戰鬥服、裝甲車輛、艦艇和其他軍事硬體上的有效作用也非常重要。開採和提鍊豐富的原礦黃金是非常簡單的流程，即使一般平民掏金者也有能力做到。即使遠離家鄉地球，人類與此貴金屬的關係仍保持密切。</div>
	</div>
</asp:Content>

