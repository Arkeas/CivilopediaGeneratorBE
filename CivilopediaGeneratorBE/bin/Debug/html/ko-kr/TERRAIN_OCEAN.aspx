<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 바다</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">바다</div>
	<img src="/civilopediabe/images/large/TERRAIN_OCEAN.png" alt="바다" class="contentimage" />
	<div class="contentleft">
		<h2>생산:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> 식량</div>
		<h2>이동력 소모:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>전투 보정치:</h2><div class="infobox">0%</div>
		
<h2>특성:</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('빙하');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
	</div>
	<div class="contentright">
		
		<h2>게임 정보:</h2><div class="infobox">바다 타일은 심해 타일입니다. 도시에서 필요한 기술을 연구하면 식량과 에너지를 제공합니다.</div>
	</div>
</asp:Content>

