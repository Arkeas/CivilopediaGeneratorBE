<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: CNDR</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">CNDR</div>
	<img src="/civilopediabe/images/large/UNIT_CNDR.png" alt="CNDR" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">155 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>전투: </h2><div class="infobox">24 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>이동:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>필요 자원:</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('파이락사이트');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_TACTICAL_ROBOTICS.aspx" onmouseover="return tooltip('전략적 로봇 공학');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_TACTICAL_ROBOTICS.png" /></a></div>
		
		
		
		<h2>친화력:</h2><div class="infobox"><img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> 우월에서 <span class="color_supremacy_affinity"> 레벨 4 필요</span></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox"><span class="color_supremacy_affinity"><img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> 우월 고유 유닛입니다.</span> 성능이 제한적이지만 믿을 만한 로봇 드론 병사로, 단순하지만 강인하고 방어력이 좋은 근접 유닛입니다.</div>
		
		<h2>역사</h2><div class="infobox">군사 작전에서 자명한 이치 가운데 하나는 공격보다는 방어가 비용이 훨씬 덜 든다는 것입니다. 방어하는 측에서는 전투가 벌어지고 있는 위치를 파악하고 있으므로 자원을 효율적으로 배치할 수 있기 때문입니다. 실제로 가장 단순한 군사 인공지능에게 최소한의 시간이나 정보만 주더라도 효율적인 방어를 준비해내는 경우가 대부분입니다. 그러니 방어해야 할 지역을 잘 파악하고 있고, 성능 좋은 군사 인공지능에게 전장에 투입한 유닛의 직접 통제권을 준다면 방어는 지극히 효율적일 수 있습니다.<br /><br />따라서 인지 신경전자 방어 등록(CNDR)은 네트워크화된 전투 프레임 및 AI 집합체를 통제하는 시스템으로서 만들어졌습니다. CNDR은 (동일한 블랙박스를 사용하는 인공지능 노듈 및 전투 프레임 운동감각 대뇌피질과 같이) 잉여성과 모듈성이 꽤 높게 만들어졌으며, 군사적 위협을 관찰하고, 보고하고, 그에 적응하여 교전할 수 있는 가장 중요한 방어 유닛이었습니다. 아군 영토를 느긋하게 조사할 수 있게 되면서 인공지능 시스템은 기동훈련을 통해 앞으로의 위협을 시뮬레이트할 수 있는 기회를 충분히 얻었습니다. CNDR을 예비 및 보호용 부대로 보유한다는 것은 손상된 전투 프레임을 더 빨리 수리하여 재투입할 수 있음을 의미하기도 했지만, 무엇보다도 드론 전투 시스템보다 인간의 창의력과 전술 융통성이 훨씬 더 효과를 발휘하는 영토 밖 공격 작전에 인간 병력을 더 많이 투입할 수 있게 된 것이 가장 큰 장점이었습니다.<br /><br />CNDR 하드웨어는 그 편재성 덕분에 CNDR이 중단된 후에도 오랫동안 로봇 응용에 대한 실질적인 기준이 되었습니다. 왜 범주 2의 이족보행 로봇 프레임에서 보행성-촉각 피드백에 할당된 채널이 34개밖에 없는지 궁금해한 적이 있습니까? 옛날 CNDR 전투 프레임의 기준이 그대로 적용된 것입니다.</div>
	</div>
</asp:Content>

