<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 공중부양 탱크</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">공중부양 탱크</div>
	<img src="/civilopediabe/images/large/UNIT_LEV_TANK.png" alt="공중부양 탱크" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">300 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>전투: </h2><div class="infobox">28 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		<h2>원거리 전투: </h2><div class="infobox">44 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>사정거리:</h2><div class="infobox">2 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		<h2>이동:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>필요 자원:</h2><div class="infobox"><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('부양석');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_MOBILE_LEV.aspx" onmouseover="return tooltip('모바일 LEV');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_MOBILE_LEV.png" /></a></div>
		
		
		
		<h2>친화력:</h2><div class="infobox"><img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> 순수에서 <span class="color_purity_affinity"> 레벨 9 필요</span></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox"><span class="color_purity_affinity"><img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> 순수 고유 유닛입니다.</span> 공격용 기갑 탈것으로 공중을 떠다니므로 협곡과 물을 거뜬히 건널 수 있습니다. 기동성이 좋은 강력한 원거리 유닛입니다. </div>
		
		<h2>역사</h2><div class="infobox">20세기 초반에 발명된 탱크는 그 이후 인류의 지상병력에서 중요한 구성 요소였습니다. 기갑부대 이론가와 전술가들은 갖은 수단을 동원하여 탱크의 방호력, 기동성, 화력을 증강했고, 전투용 모델은 위대한 과오까지 이어졌지만, 그 후에는 희귀해진 자원을 너무 많이 투자해야 한다는 이유에서 많은 사람들이 '기갑의 종말'을 주장했습니다. 하지만 이것이 탱크의 종말은 아니었습니다.<br /><br />부양석 원자로가 반중력 필드 생성기로 발전하면서, 군사 이론가들은 다시 한 번 탱크라는 개념에 눈을 돌렸습니다. 설계에서 현수 무게 제한이 더 이상 고려사항이 될 필요가 없자, 탱크 설계와 생산은 새로운 시대를 열었고, 옛 지구에서 생각조차 할 수 없었던 모델의 탱크가 나오게 되었습니다. 탱크에 기갑을 더 많이 장착할 수 있게 되었을 뿐 아니라 무기도 더 많이 탑재하여 실질적으로 거의 어떤 위협에도 맞설 수 있게 된 것이었습니다. 시드 프로젝트 이전 지구의 탱크에는 주포가 하나뿐이었지만 이곳의 공중 부양 탱크는 주포를 여러 개 장착했고, 이제는 사정거리도 훨씬 길어졌습니다. 또한 항공기만큼 빠르지는 않으나 지금까지 개발된 거의 어떤 무기로도 파괴할 수 없을 만큼 튼튼해졌습니다.<br /><br />공중 부양 탱크는 지상 전투에서 중요한 역할을 수행하고 있습니다. 탑재한 무기는 거의 모든 목표물을 파괴할 정도로 강력하고, 그 장갑은 안에 탑승한 노련한 병사들을 문제 없이 보호할 정도로 튼튼합니다. 중대 및 부대로 편성되는 공중 부양 탱크는 어떤 공격에서든 선봉에 섭니다. 몇 백 대나 되는 거대한 탱크가 먼 거리에서 무한정으로 포격을 퍼부어대면 겁먹은 적이 방어를 포기하고 항복을 하는 경우도 부지기수입니다.</div>
	</div>
</asp:Content>

