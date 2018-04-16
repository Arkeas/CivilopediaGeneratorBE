<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 工人</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">工人</div>
	<img src="/civilopediabe/images/large/UNIT_WORKER.png" alt="工人" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">60 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		<h2>移動力：</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		<h2>科技要求：</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('居住區');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">平民單位。在陸地和海上建造改良設施，提昇有市民工作的地塊的產出。</div>
		<h2>戰略資訊：</h2><div class="infobox">這個單位可鋪設公路、磁浮軌道，還能建造改良設施，例如農場和礦場。其無法自保，所以當其位於危險的領土時，會配備軍事單位。</div>
		<h2>歷史</h2><div class="infobox">如果說，殖民者是殖民地的心臟，那麼工人們就是血液。工人們藉由建造改良設施，讓殖民地能夠運用地形。不僅如此，他們也能消除地形中的瘴氣，提高地形的實用性。當殖民地科技上有所發展時，工人們也會成長，他們最終會獲得添加瘴氣的能力，或者甚至是建造「地球景觀」改良設施的能力。</div>
	</div>
</asp:Content>

