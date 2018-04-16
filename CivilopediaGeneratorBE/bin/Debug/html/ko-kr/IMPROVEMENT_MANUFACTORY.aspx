<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 제조공장</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">제조공장</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MANUFACTORY.png" alt="제조공장" class="contentimage" />
	<div class="contentleft">
		<h2>유지:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		<h2>건강:</h2><div class="infobox">2 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>생산:</h2><div class="infobox">3</span> <img src="/civilopediabe/images/production.png" alt="production" /> 생산력</div>
		
		
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('로봇 공학');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		<h2>건축 가능한 지형:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('초원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('평원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('사막');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('툰드라');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('설원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">인류는 강제적으로 외계에서 새 출발을 하게 되었지만, 산업에 대한 열정은 식지 않았습니다. 그래서 제조공장은 외계 콜로니에서도 공업 단지의 형태로 발전해 나갔습니다. 제조공장은 제련, 정제, 조립과 같은 여러 산업 기능을 활용하고자 방대한 구조로 설계되었습니다. 그리고 콜로니는 제조공장 내에서 여러 산업 활동을 통합해 나가며, 옛 지구에서 만연했던 문제를 방지하고 지형의 활용도를 높였습니다.</div>
	</div>
</asp:Content>

