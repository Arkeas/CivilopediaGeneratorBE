<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 浮遊石</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">浮遊石</div>
	<img src="/civilopediabe/images/large/RESOURCE_FLOAT_STONE.png" alt="浮遊石" class="contentimage" />
	<div class="contentleft">
		<h2>生産:</h2><div class="infobox">生産なし</div>
		
		<h2>見つかる場所:</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('丘陵');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('ツンドラ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a></div>
		<h2>活用施設:</h2><div class="infobox"><a href="IMPROVEMENT_FLOAT_STONE_QUARRY.aspx" onmouseover="return tooltip('浮遊石採石場');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_FLOAT_STONE_QUARRY.png" /></a></div>
	</div>
	<div class="contentright">
		
<h2>ゲーム情報:</h2><div class="infobox">ゲーム後半に現れる強力なユニットや建造物に使用されます。</div>
		<h2>歴史</h2><div class="infobox">広大な玄武岩帯やフィラクサイト鉱床と同じく、激しい火山活動の産物である"浮遊石"は、最初の惑星調査隊によって発見された、軽石によく似た多孔質岩である。浮遊石はどうやらモノポール(単極磁石)と思われ、これはジョセフ・ポルチンスキーがその粒子物理学および量子重力理論において予言したが、地球の自然界においては未確認だった現象である。しかしながらこの惑星においては、変成岩の一種であるこの浮遊石は、その単極性と、惑星核から放出される強力な磁場との相互作用によって、地面に接することなく宙に"浮いて"いるように見える。時には創出される磁場(閉曲線型)の凄まじい反発力により、重量数トンの巨塊ですら、極めて低い対地同期軌道上に留まりながら、浮遊している場合がある。火山砕屑岩である浮遊石は低密度であるため、それが宙に浮かぶほどの反発力を生みやすくしていると考えられる。浮遊石は研磨材や建築材、濾過液、絶縁材、栽培基質などに用いられるが、現在もっとも期待されているのが、磁気浮上型(マグレブ)輸送分野への応用である。アーンショーの定理では不可能とされたが、この惑星においては、反磁性体(加工した浮遊石など)と超伝導型サーボ機構、高調波アブゾーバーの併用により、車両を効果的に浮遊させることは可能だと言われている。このテクノロジーが実現した暁には、入植事業における浮遊石の戦略的価値は恐ろしく跳ね上がることだろう。</div>
	</div>
</asp:Content>

