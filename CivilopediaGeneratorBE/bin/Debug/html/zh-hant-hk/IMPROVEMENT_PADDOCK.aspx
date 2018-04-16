<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 牧場</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">牧場</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PADDOCK.png" alt="牧場" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>產出：</h2><div class="infobox">+1 來自 <img src="/civilopediabe/images/chitin.png" alt="chitin" /> 幾丁質 的 <img src="/civilopediabe/images/production.png" alt="production" /> 生產力<br />+1 來自 <img src="/civilopediabe/images/resilin.png" alt="resilin" /> 節肢彈性蛋白 的 <img src="/civilopediabe/images/research.png" alt="science" /> 科技值</div>
		
		
		<h2>改良資源：</h2><div class="infobox"><a href="RESOURCE_RESILIN.aspx" onmouseover="return tooltip('節肢彈性蛋白');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_RESILIN.png" /></a><a href="RESOURCE_CHITIN.aspx" onmouseover="return tooltip('幾丁質');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CHITIN.png" /></a></div>
		
		
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">牧场巧妙合併了狩獵營和草场。受到外星殖民地採用，由於傳統狩獵的危險開始危及他們的人口，牧场逐漸發展普及。在本質上，牧场的結構運作如同被動的狩獵工具，利用自然環境吸引和設陷阱捕捉當地野生動物，讓殖民地獲得甲殼質和彈性蛋白的資源。</div>
	</div>
</asp:Content>

