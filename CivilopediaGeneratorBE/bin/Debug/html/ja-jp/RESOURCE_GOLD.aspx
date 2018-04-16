<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 金</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">金</div>
	<img src="/civilopediabe/images/large/RESOURCE_GOLD.png" alt="金" class="contentimage" />
	<div class="contentleft">
		<h2>生産:</h2><div class="infobox"><img src="/civilopediabe/images/culture.png" alt="culture" />文化力1</div>
		
		<h2>見つかる場所:</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('丘陵');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
		<h2>活用施設:</h2><div class="infobox"><a href="IMPROVEMENT_MINE.aspx" onmouseover="return tooltip('鉱山');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_MINE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>歴史</h2><div class="infobox">原子量196.96、原子番号79の金は、かつての地球においてはその稀少性(0.005ppm以下)や美しい光沢、可鍛性、そしてほぼ破壊不能な強度から、大いに重宝されていた。"大いなる過ち"以前の多くの国家において、金は通貨として流通し、人間文明の発足以来長いこと取引され、隠匿され、盗難されてきた。だがこの星の金は熱水脈内に比較的よく見られる鉱物で、主に(個人的に宝石に用いる場合を除いて)工業やテクノロジー分野に用いられる。金は電導性であると同時に腐食耐性に優れ、湿気の強い環境下や塩水中での利用に適している。コンピューターや通信機器、半導体、宇宙船、各種エンジンへの利用も盛んであるほか、最先端のコンバットスーツや装甲車両、艦船などの軍需品の効果的運用にも欠かせない。惑星内に豊富に存在する金の採掘および精錬は単純な作業であるため、民間の採掘師でも十分やりこなせる。祖国から遠く離れたこの星においても、人類とこの気高い金属の関係は親密であり続けている。</div>
	</div>
</asp:Content>

