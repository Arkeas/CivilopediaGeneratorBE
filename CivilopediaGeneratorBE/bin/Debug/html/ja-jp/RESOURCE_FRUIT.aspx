<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 果物</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">果物</div>
	<img src="/civilopediabe/images/large/RESOURCE_FRUIT.png" alt="果物" class="contentimage" />
	<div class="contentleft">
		<h2>生産:</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食料</div>
		
		<h2>見つかる場所:</h2><div class="infobox"><a href="FEATURE_FOREST.aspx" onmouseover="return tooltip('森林');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_FOREST.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a></div>
		<h2>活用施設:</h2><div class="infobox"><a href="IMPROVEMENT_PLANTATION.aspx" onmouseover="return tooltip('プランテーション');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PLANTATION.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>歴史</h2><div class="infobox">地球の石炭紀に相当する時代にあるこの惑星には、被子植物がほとんど存在しない。ゆえに実を結ぶ植物は稀である。人民アフリカ連合、太平洋共同体、南アメリカ州機構の最初の入植者たちは、果実を収穫できる、生命力の強い南国植物をいくつも持ち込んだ。こうした植物のうち、特定の種はこの星でも生き延び、耕地において繁殖することができた。特に知られているのがドリアン、アキー、ジャックフルーツ、チェリモヤ、ホワイトサポーテ、タマリンド、パンノキなどである。実際のところ、こうした結果樹は半世紀も経たないうちに、惑星原産の被子植物ともうまく共存しながら幅広い地域へ拡散し、入植者たちの主食のひとつを担うようになった。いくつかの在来サボテン種はウチワサボテンに似た実を結び、これらは栄養抜群であることが分かっている。また、惑星内の菌種の中には、一般的な果実の定義と役割を満たした、食用に適する胞子嚢果を生み出す。さらには地球では絶滅したコルダイテスの近親種は、イチイに似た実をならせ、リンボク科に属する石炭性ヒゲノカズラから作られる"フルーツコーン"は極めて美味である。野生で収穫されるにせよ、入植地の農園で大量栽培されるにせよ、こうしたバラエティ豊かな果物が、入植者たちの食生活を豊かにしており、多くの場合、人間の生命維持に欠かせない重要なミネラルやビタミン、食物繊維などの栄養をもたらしている。</div>
	</div>
</asp:Content>

