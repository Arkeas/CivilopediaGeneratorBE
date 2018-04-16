<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 繊維</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">繊維</div>
	<img src="/civilopediabe/images/large/RESOURCE_FIBER.png" alt="繊維" class="contentimage" />
	<div class="contentleft">
		<h2>生産:</h2><div class="infobox">1</span><img src="/civilopediabe/images/production.png" alt="production" />生産力</div>
		
		<h2>見つかる場所:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
		<h2>活用施設:</h2><div class="infobox"><a href="IMPROVEMENT_PLANTATION.aspx" onmouseover="return tooltip('プランテーション');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PLANTATION.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>歴史</h2><div class="infobox">ファイバー(繊維)とは、撚り合わせて織り上げることができる、糸のように柔軟なあらゆる紐状の素材のことで、現在は40種類以上の産業用ファイバーが存在する。大半のファイバーは植物(在来種および外来種)から作られるが、動物性や鉱物性のファイバーも存在する。動物性ファイバーの主成分がタンパク鎖であるのに対し、植物性ファイバーはセルロースである。この星の動物種の多くはファイバーの生産に適さないが、入植者たちは羊やアルパカ、ビクーニャ、兎、テンなど、ファイバーを収穫できる動物たちを地球から持ち込んでいた。同様に在来植物種の大半が異形胞子性であるため、入植地の植物性ファイバーは主に亜麻、大麻、カポックなど、この星の耕地でも栽培可能と判明している地球産植物から生み出される。しかしながら、"ウルフビートル"の小型の近親種が大量に放出する、蜘蛛の糸によく似た物質は、収穫して撚り合わせることが可能だ。また、惑星原産の一部の鉱石からは、アスベストに似たような素材を加工することもできる。その一方で、地球から持ち込んだ繊維作物の多くは、一部の地域に蒔いた種が急速かつ野放図に繁殖したため、現在では侵略的外来種に分類されている。こうしたファイバー生産は比較的小規模ながら、現実的な産業として各地に広まった。これに加えて、入植地の工場では、様々な種類のポリアミドナイロン、ポリウレタン繊維、低デニールマイクロファイバーなどが産業用や科学研究用に生産されている。</div>
	</div>
</asp:Content>

