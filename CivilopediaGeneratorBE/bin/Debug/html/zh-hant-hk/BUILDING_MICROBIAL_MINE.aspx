<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 微生物礦場</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">微生物礦場</div>
	<img src="/civilopediabe/images/large/BUILDING_MICROBIAL_MINE.png" alt="微生物礦場" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">430 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>維護費：</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>生產力：</h2><div class="infobox">+3 <img src="/civilopediabe/images/production.png" alt="production" /> , +10% <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		<h2>所需資源：</h2><div class="infobox"><a href="RESOURCE_XENOMASS.aspx" onmouseover="return tooltip('異種物質');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_XENOMASS.png" /></a></div>
        
		
		<h2>科技要求：</h2><div class="infobox"><a href="TECH_SYNERGETICS.aspx" onmouseover="return tooltip('合作');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_SYNERGETICS.png" /></a></div>
		
		
		
		
		<h2>傾向性:</h2><div class="infobox">需要 <span class="color_harmony_affinity"> 等級 7 的 <img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> 和諧</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>歷史</h2><div class="infobox">合作研究的其中一個分支是生物探勘，透過基因突變上位微生物從礦石原料提取外來礦物。利用突變嗜酸古生菌（例如，從焦酚火球菌或金屬硫化葉菌）濾出礦石中微量的礦物，相較來說極熱或化學反應方法更昂貴且需能量密集。第一次使用是「播種」之前在小行星採礦的時候，將微生物探勘技術應用到從橄欖石地幔帶來的礦石，使用數種細菌分離各種稀土和礦物。殖民任務包括這些細菌的樣本和基因圖譜，這成為在這個星球上協同研究的基礎。一直到現在，一些急速發展的微生物設計用來生產罕見但重要的元素，如鉅和鎝，兩者都沒有穩定的同位素。比起代工廠，微生物探勘設施更類似於實驗室，分割成乾淨的空間以隔絕稀有礦物受到污染，且通常位在礦石地點附近——某些情況在峽谷或鑽孔附近的地下設施。由於微生物探勘的過程對生態影響相對溫和，它已成為提取礦物的有利方法，對於一些殖民地來說也是最常見的方法。</div>
	</div>
</asp:Content>

