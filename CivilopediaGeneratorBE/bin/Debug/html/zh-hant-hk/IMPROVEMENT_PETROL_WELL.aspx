<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 油井</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">油井</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PETROL_WELL.png" alt="油井" class="contentimage" />
	<div class="contentleft">
		
		<h2>健康度：</h2><div class="infobox">1 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>產出：</h2><div class="infobox">+2 來自 <img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> 石油 的 <img src="/civilopediabe/images/energy.png" alt="energy" /> 能量<br />+1 來自 <img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> 石油 的 <img src="/civilopediabe/images/production.png" alt="production" /> 生產力</div>
		
		
		<h2>改良資源：</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>科技要求：</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('化學');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">殖民地透過井的使用，可以控制他們新世界中自然產生的能源。雖然仍有石油存在，不過這個新資源確保了旱地探鑽仍然是人類工業的重要部分。建造在旱地時，井可以提供大量需求的地熱和異種物質資源。</div>
	</div>
</asp:Content>

