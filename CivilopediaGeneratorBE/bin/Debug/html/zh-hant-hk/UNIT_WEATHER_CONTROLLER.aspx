<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 天氣控制器</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">天氣控制器</div>
	<img src="/civilopediabe/images/large/UNIT_WEATHER_CONTROLLER.png" alt="天氣控制器" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">130 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>軌道影響範圍：</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>軌道回合持續時間：</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>所需資源：</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('鈦');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>科技要求：</h2><div class="infobox"><a href="TECH_CLIMATE_CONTROL.aspx" onmouseover="return tooltip('氣候控制');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CLIMATE_CONTROL.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">軌道單位。擁有單元格中 +1 <img src="/civilopediabe/images/food.png" alt="food" /> 糧食。在生命週期未改善的單元格，產生 1 到 2 個新的基礎資源。</div>
		
		<h2>歷史</h2><div class="infobox">天氣控制器有和太陽能集熱器相似的作用，讓殖民地得以運用其軌道網路，豐富了他們星球上的生命。天氣控制器利用精細的電磁能量，為其範圍內的所有單元格創造出舒適合宜的天氣。這樣適當的天氣，使得殖民地的糧食生產力最佳化，提高了每個所擁有單元格的產量。除此之外，天氣控制器已知可以改變未改良地區的本質，使這些地區偶爾能生產出基礎資源。</div>
	</div>
</asp:Content>

