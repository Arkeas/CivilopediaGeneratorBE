<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 해안</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">해안</div>
	<img src="/civilopediabe/images/large/TERRAIN_COAST.png" alt="해안" class="contentimage" />
	<div class="contentleft">
		<h2>생산:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> 식량, 1</span> <img src="/civilopediabe/images/energy.png" alt="energy" /> 에너지</div>
		<h2>이동력 소모:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>전투 보정치:</h2><div class="infobox">0%</div>
		
<h2>특성:</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('빙하');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
<h2>출현하는 자원:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('석유');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('산호');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('해조류');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>게임 정보:</h2><div class="infobox">해안 타일은 육지에 직접 인접한 바다 타일로 주변 도시에 식량과 에너지를 공급합니다. 해상 유닛, 공중 유닛, 저공 유닛, 그리고 '승선'한 지상 유닛만 해안 타일에 들어갈 수 있습니다.</div>
	</div>
</asp:Content>

