<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 前哨站</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">前哨站</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_OUTPOST.png" alt="前哨站" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>產出：</h2><div class="infobox">無產出</div>
		
		
		
		
		<h2>可建地形：</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('凍土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('雪原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">簡單來說，前哨站是原始城市：放置在地圖上的小型設施，並像城市一樣取得領土，但還沒有城市的優勢。前哨站無法生產建築物、軍事單位或奇跡，而且無法轟炸敵方單位。前哨站可以改良領土內的單元格以提高產出，但前哨站領土不能限制敵方軍事單位的行動。<br /><br />前哨站沒有遠程攻擊能力，戰鬥力也很弱，而且遭到侵略時會被摧毀而非佔領。單位可駐守其中，且一樣進行近戰或遠程戰鬥。<br /><br />前哨站模式的唯一例外是玩家的首都，也就是你在遊戲開始時建立的第一座城市。首都城市已建造完成；所有後續的「建造」行動將產生前哨站。</div>
	</div>
</asp:Content>

