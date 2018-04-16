<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 농장</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">농장</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FARM.png" alt="농장" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>생산:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> 식량</div>
		
		
		
		
		<h2>건축 가능한 지형:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('초원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('평원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('사막');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">외계 환경의 불확실함에 맞서 농장은 인류의 가장 확실한 생존 수단이 되었습니다. 농장 덕분에 자원을 안전하고 식용 가능한 상태로 생산할 수 있게 되었습니다. 농장은 평원, 사막, 초원에 지을 수 있으며, 도시의 식량 생산을 늘립니다.</div>
	</div>
</asp:Content>

