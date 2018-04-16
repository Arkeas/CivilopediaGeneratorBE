<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: SABR</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">SABR</div>
	<img src="/civilopediabe/images/large/UNIT_SABR.png" alt="SABR" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">320 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>전투: </h2><div class="infobox">16 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		<h2>원거리 전투: </h2><div class="infobox">52 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>사정거리:</h2><div class="infobox">3 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		<h2>이동:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>필요 자원:</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('파이락사이트');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_SYNTHETIC_THOUGHT.aspx" onmouseover="return tooltip('인공 사고');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_SYNTHETIC_THOUGHT.png" /></a></div>
		
		
		
		<h2>친화력:</h2><div class="infobox"><img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> 우월에서 <span class="color_supremacy_affinity"> 레벨 9 필요</span></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox"><span class="color_supremacy_affinity"><img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> 우월 고유 유닛입니다.</span> 고도로 정밀한 로봇 포대 플랫폼으로 포격범위와 정밀도 모두 탁월합니다. 느리지만 강력한 원거리 및 공성 유닛입니다.</div>
		
		<h2>역사</h2><div class="infobox">군사 유닛은 특정 대상에 타격을 입히는 것이 목적입니다. 그 타격을 극대화하려면 유닛의 힘을 강화하거나 대상을 약화시키는 방법이 있습니다. 후자의 방법은 실현하기가 힘들 수도 있겠지만, 전장에서는 어떤 대상이든 약점이 있는 법이지요. 약점을 공격하는 무기 시스템은 그 힘보다 훨씬 강한 위력을 발휘할 수도 있습니다. 이는 우월 이데올로기에서도 입증되고 있습니다.<br /><br />전략 포병대 로봇(SABR)은 그리 효율적이지 못했던 포병대가 다양한 대상을 칼 같은 정확도로 공격할 수 있도록 개발되었습니다. SABR이 독특한 것은 포신이 아주 커서가 아니라 (실제로 그리 크지 않습니다), 적절한 시간에 적절한 대상에게 적절한 포격을 퍼부어 타격을 극대화할 수 있다는 것입니다. SABR의 결점은 작동과 효율 면에서 센서 네트워크에의 의존도가 높다는 것입니다. 이 네트워크는 SABR이 목표로 하는 대상에 대한 정보를 모아 해석하고, 기상학 센서를 사용하여 날씨 패턴에 맞게 조준을 교정하여 사정거리를 넓힙니다. 또한 공격 타격 평가 시스템을 사용하여 포격 프로토콜을 업데이트, 명중률을 높입니다(그리고 시간을 들여 피드백을 수집하고 통합시킵니다). 마지막으로, 표적 첩보에 대한 역학적 카탈로그와 강력한 표적 구별 시스템이 있어 무엇을 표적으로 삼을 것인지, 해당 표적이 어디에 숨어 있는지, 그 표적을 파괴하려면 어떤 시스템이 가장 좋은지를 확인합니다. 포격을 개시하기까지 시간은 걸리지만, 포격의 물리적 정확성과 효율은 노련한 정찰병들조차도 기겁할 정도입니다.<br /><br />전투의 역사에서 SABR의 활약상은 놀랍습니다. 표적 명중률/살상률이 100%에 근접하므로, SABR의 폭격에서 살아남는 것은 신이 개입하지 않고서는 불가능하다고 여겨집니다. '통합 전투 및 무기를 위한 행성 아카데미'에는 분스켈 케그 전투에서 발사되었던 다 찌그러진 SABR 텅스텐 포탄이 전시되어 있고, 그 아래 명판에는 “SABR 대대는 56발을 발사했고, 이 한 발은 빗나갔다”라고만 적혀 있습니다.</div>
	</div>
</asp:Content>

