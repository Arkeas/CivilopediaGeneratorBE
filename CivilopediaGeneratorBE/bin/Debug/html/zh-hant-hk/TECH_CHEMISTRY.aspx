<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 化學</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">化學</div>
	<img src="/civilopediabe/images/large/TECH_CHEMISTRY.png" alt="化學" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>解鎖建築：</h2><div class="infobox"><a href="BUILDING_LABORATORY.aspx" onmouseover="return tooltip('實驗室');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_LABORATORY.png" /></a><a href="BUILDING_RECYCLER.aspx" onmouseover="return tooltip('回收站');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RECYCLER.png" /></a></div>
        
		<h2>探明資源：</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>允許工人進行以下行動：</h2><div class="infobox"><a href="IMPROVEMENT_PETROL_WELL.aspx" onmouseover="return tooltip('建造油井');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PETROL_WELL.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">解鎖建築<span class="color_highlight_building">實驗室</span>和<span class="color_highlight_building">回收站</span>。允許工人建造單元格改良設施<span class="color_highlight_improvement">油井</span>。在地圖探明<span class"color_highlight_resource">石油</span>資源。</div>
		
		<h2>名言錦句：</h2><div class="infobox">「四十億年前，全球的資源只由少數人共享。我們即將在此創造財富！」<br />- 胡塔瑪，「我們終將繁榮」</div>
		<h2>歷史</h2><div class="infobox">培根、波爾、胡克和梅約開始重新型塑鍊金術為科學的古老年代開始，將嚴謹和秩序注入元素的研究，化學一直是最重要的研究領域之一。編撰化學定律和理解自然現象時，化學成為科學和工業最重要的領域之一。人類前近太空時，開展出新的分支旁葉，如天體化學、超分子化學和金屬有機化學。新的行星帶來新的發現 – 如火山輝晶和浮石 – 依序將化學研究推進到未能預期的方向。對於應用化學而言，我們可說化學是人類成功進行宇宙殖民的最重要部份。</div>
	</div>
</asp:Content>

