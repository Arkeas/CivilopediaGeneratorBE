<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 아카데미</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">아카데미</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_ACADEMY.png" alt="아카데미" class="contentimage" />
	<div class="contentleft">
		<h2>유지:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>생산:</h2><div class="infobox">3</span> <img src="/civilopediabe/images/research.png" alt="research" /> 과학</div>
		
		
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_COGNITION.aspx" onmouseover="return tooltip('인지');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_COGNITION.png" /></a></div>
		<h2>건축 가능한 지형:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('초원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('평원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('사막');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('툰드라');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('설원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">콜로니의 생존은 시민의 지식수준과도 직접 연계되어 있으므로 정규 교육은 이곳 생활에서 중요한 역할을 차지합니다. 아카데미에서는 모든 시민이 코어 텍스트라고 하는 기본 지식을 갖추도록 책임을 지고 있습니다. 시민들은 여기서 어떤 방향이 콜로니에 유익한지를 배울 수 있습니다. 아카데미는 콜로니의 제도화된 신조 속에서 세워졌으므로, 옛 지구에서 가르쳤던 내용을 능가하는 교육을 전달하고자 계속 노력하고 있습니다.</div>
	</div>
</asp:Content>

