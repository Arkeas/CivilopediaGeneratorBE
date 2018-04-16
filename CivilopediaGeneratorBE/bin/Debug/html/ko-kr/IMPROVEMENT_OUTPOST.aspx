<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 전초기지</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">전초기지</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_OUTPOST.png" alt="전초기지" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>생산:</h2><div class="infobox">생산 없음</div>
		
		
		
		
		<h2>건축 가능한 지형:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('초원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('평원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('사막');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('툰드라');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('설원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">전초기지는 한 마디로, 도시의 전 단계입니다. 지도에 배치하고 도시와 같이 영토를 획득하지만 아직 도시의 혜택은 제공하지 않는 작은 시설입니다. 전초기지는 건물을 건설하거나 군사 유닛을 생산하거나 불가사의를 지을 수 없고, 적 유닛을 공격할 수도 없습니다. 전초기지는 단지 영토 내 타일에서의 시설 건설과 이러한 타일에서 생산하는 산물에 대한 독점 권한을 확보하는 것이지, 전초기지 영토가 적 군사 유닛의 이동을 제한하지는 않습니다.<br /><br />전초기지는 원거리 공격 능력이 없고 전투력이 약하기 때문에 점령당하면 해당 문명의 차지가 되는 것이 아니라 파괴되어 버립니다. 하지만 전초기지 안에 유닛을 주둔시켜 근거리 또는 원거리 전투를 수행할 수 있습니다.<br /><br />도시를 만들기 위한 전초기지 단계의 유일한 예외는 바로, 게임을 시작할 때 지은 첫 번째 도시인 수도입니다. 수도는 이미 완성된 상태로 세워지며, 이후의 모든 '창건' 행동은 전초기지를 세웁니다.</div>
	</div>
</asp:Content>

