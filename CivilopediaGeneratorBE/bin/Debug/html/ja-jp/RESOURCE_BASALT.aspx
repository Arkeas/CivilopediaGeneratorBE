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
		<h2>生産:</h2><div class="infobox">1</span><img src="/civilopediabe/images/production.png" alt="production" />生産力</div>
		
		<h2>見つかる場所:</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('丘陵');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('ツンドラ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a></div>
		<h2>活用施設:</h2><div class="infobox"><a href="IMPROVEMENT_QUARRY.aspx" onmouseover="return tooltip('採石場');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_QUARRY.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>歴史</h2><div class="infobox">玄武岩は、溶岩が急激に冷やされる過程や惑星地表付近で形成される、一般的な非結晶質火成岩で、地球に限らず、火星、金星、木星の月イオ、地球の月、それにベスタ小惑星などでも見つかっている。主な成分は斜長石という種類の長石だが、この星の玄武岩は大量の石英やシリカ、それに微量のマグネシウムやソジウムも含んでいる。まだ若い星であるせいか、この惑星には玄武岩が豊富に存在し、容易に採掘できるため、結果的に様々な用途へ供されるに至った。安価な建設材や舗装材として広く普及しているほか、高温(摂氏1600度以上)に熱した玄武岩からは"ストーンウール"が成形され、優れた断熱材として重宝される。ストーンウールはまた、濾過装置や防音材、プラスチックの生産、さらには地球から持ち込んだ幼苗を発芽させるための、水耕栽培用育苗トレイにも用いられる。ストーンウールは長時間の接触による人体への有害性が確認されており、予防策を講じる必要があるものの、全体的な利便性に鑑みれば、これらは些細な問題と言えよう。</div>
	</div>
</asp:Content>

