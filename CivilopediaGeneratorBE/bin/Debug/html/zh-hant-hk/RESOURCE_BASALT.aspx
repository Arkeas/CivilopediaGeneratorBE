<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 玄武岩</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">玄武岩</div>
	<img src="/civilopediabe/images/large/RESOURCE_BASALT.png" alt="玄武岩" class="contentimage" />
	<div class="contentleft">
		<h2>產出：</h2><div class="infobox">1</span><img src="/civilopediabe/images/production.png" alt="production" />生產力</div>
		
		<h2>出現地形：</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('丘陵');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('凍土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a></div>
		<h2>改良設施：</h2><div class="infobox"><a href="IMPROVEMENT_QUARRY.aspx" onmouseover="return tooltip('採石場');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_QUARRY.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>歷史</h2><div class="infobox">星球接近地表處的岩漿快速冷卻時形成常見的隱晶質火成岩，也就是玄武岩在地球、火星、金星和木星的衛星、地球的衛星（月亮）甚至是小行星（灶神星）上都可發現。此星球的玄武岩的主要成份為長石，並以斜長石的形態存在，包含大量的石英和二氧化矽，並也含有鎂和鈉。因為此星球相對年輕，所以含有大量玄武岩並可輕鬆進行開採，並得以將其推廣到多種用途。除了作為經濟實惠的建築物和鋪路材料，玄武岩可加熱至高溫（至少攝氏 1600 度）並加以伸展，製造隔熱效果超強的「木化石」。殖民者也可使用石化木作為過濾系統、隔音之用、製造塑膠並將從地球運來的種子進行水培發芽作業。雖然長期曝露於木化石時有其健康風險，且必須特別小心，但一般說來，症狀輕微，且其用途更使得其風險顯得為不足道。</div>
	</div>
</asp:Content>

