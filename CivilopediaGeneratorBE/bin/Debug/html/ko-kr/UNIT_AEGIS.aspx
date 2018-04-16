<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 이지스</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">이지스</div>
	<img src="/civilopediabe/images/large/UNIT_AEGIS.png" alt="이지스" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">180 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>전투: </h2><div class="infobox">20 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		<h2>원거리 전투: </h2><div class="infobox">34 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>사정거리:</h2><div class="infobox">2 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		<h2>이동:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>필요 자원:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('티타늄');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('부양석');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_SURROGACY.aspx" onmouseover="return tooltip('대리의식');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_SURROGACY.png" /></a></div>
		
		
		
		<h2>친화력:</h2><div class="infobox"><img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> 순수에서 <span class="color_purity_affinity"> 레벨 7 필요</span></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox"><span class="color_purity_affinity"><img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> 순수 고유 유닛입니다.</span> 중량이 가볍고 기계화된 기갑형 원거리 유닛으로 다양한 무기를 탑재하고 지상을 걸어다닐 수 있으며, 다목적  화력 지원 기능이 있습니다.</div>
		
		<h2>역사</h2><div class="infobox">군사 연구가들은 직립보행의 부수적 효과 중에서 흥미로운 사실을 한 가지 발견했습니다(처음 주목한 것은 윌룬 군사 연구협회였습니다). 군인들은 사족보행보다 이족보행 전투 유닛과 같이 있을 때 더 잘 싸운다는 것이었습니다. 이 윌룬 효과에 대해 여러 가지 설명이 나왔지만, 어쨌든 인간 군인의 전투력이 높아지면 이족보행 전투 유닛을 제작하는 개발비를 상쇄하고도 남는다는 것이 정설로 굳어졌습니다. 군인들은 이족보행 전투 유닛이 다른 유닛보다 인간에 가깝다는 느낌을 받는 듯합니다. 어느 요인 분석에 따르면 이족보행 전투 유닛은 '전투의 반신반인'과 '큼직한 총을 든 믿음직한 형'의 중간 정도 느낌에 해당한다고 합니다. 일부 군사 과학자들이 이 월룬 효과를 더욱 높이기 위해 만든 유닛이 이지스입니다.<br /><br />순수 친화력의 대부분 전투 유닛과는 달리 이지스는 전투 인공지능을 갖추고 있습니다. 비록 이 인공지능은 자세 유지, 부드러운 움직임, 손상 수리 능력, 무기 재장전에만 사용되지만, 이지스를 조종하는 인간 오퍼레이터가 적과의 전투에만 집중하게 만들기에 충분합니다. 이지스의 인공지능은 가장 기본적인 움직임(걷거나 수리용 기중기에서 벗어나는 정도)만을 수행할 뿐이고 무기의 방아쇠를 당기지는 못하게 설계되어 있습니다. 반면 인간 오퍼레이터는 전장의 다양한 위협에 대처하여 수많은 무기 시스템을 사용할 능력이 있습니다. 이지스의 놀라운 전술적 가치는 인간 오퍼레이터가 동시에 여러 가지 위협에 처했을 때, 또는 이지스의 모든 무기를 한 가지 위협에 집중할 수 있다는 데 있습니다.<br /><br />이지스는 숨으려 하지 않습니다. 자신의 힘을 한껏 과시하며 적에게든 아군에게든 똑같이 무기를 뽐냅니다. 이지스의 조종사는 고도로 훈련되었고 동료 병사들의 존경을 받습니다. 이지스는 언제나 그 거대한 위용으로 적의 주의를 끌어들인 다음 강력한 공격을 퍼부어 전우를 구하기 때문입니다.</div>
	</div>
</asp:Content>

