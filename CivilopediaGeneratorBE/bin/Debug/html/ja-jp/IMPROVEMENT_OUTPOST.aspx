<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 前哨地</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">前哨地</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_OUTPOST.png" alt="前哨地" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>生産:</h2><div class="infobox">生産なし</div>
		
		
		
		
		<h2>建設可能な場所:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('ツンドラ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('氷土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">前哨地とは、要するに都市の原型である。マップ上に配置されるこの小さな施設は、都市のように領土を取得する一方、まだ都市の利点は享受できない。そのため建造物、軍事ユニット、遺産を作ることはできず、敵ユニットへの砲撃も不可能だが、領土内のタイルを排他的に活用し、その生産物を独占することができる。ただし、領土内における敵軍事ユニットの移動は制限されない。<br /><br />遠隔攻撃能力を持たない前哨地は、戦闘力が脆弱であるため、敵の包囲を受けると占領されずに、破壊されてしまう。部隊を駐留させている場合は、軍事ユニットが通常どおりの近接攻撃や遠隔攻撃を行う。<br /><br />前哨地における唯一の例外は「首都」だ。ゲーム開始後、プレイヤーが最初に建造する都市である「首都」は、すでに完成した状態で設置される。その後はいかなる都市を「建設」する場合も、まずは前哨地が設置される。</div>
	</div>
</asp:Content>

