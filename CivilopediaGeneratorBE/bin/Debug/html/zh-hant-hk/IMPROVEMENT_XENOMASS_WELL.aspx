<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 異種物質井</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">異種物質井</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_XENOMASS_WELL.png" alt="異種物質井" class="contentimage" />
	<div class="contentleft">
		<h2>維護費：</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>產出：</h2><div class="infobox">+3 來自 <img src="/civilopediabe/images/xenomass.png" alt="xenomass" /> 異種物質 的 <img src="/civilopediabe/images/food.png" alt="food" /> 糧食</div>
		
		
		<h2>改良資源：</h2><div class="infobox"><a href="RESOURCE_XENOMASS.aspx" onmouseover="return tooltip('異種物質');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_XENOMASS.png" /></a></div>
		<h2>科技要求：</h2><div class="infobox"><a href="TECH_ALIEN_SCIENCES.aspx" onmouseover="return tooltip('異族科學');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ALIEN_SCIENCES.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">殖民地透過井的使用，可以控制他們新世界中自然產生的能源。雖然仍有石油存在，不過這個新資源確保了旱地探鑽仍然是人類工業的重要部分。建造在旱地時，井可以提供大量需求的地熱和異種物質資源。</div>
	</div>
</asp:Content>

