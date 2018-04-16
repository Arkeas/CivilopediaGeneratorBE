<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 배틀슈트</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">배틀슈트</div>
	<img src="/civilopediabe/images/large/UNIT_BATTLESUIT.png" alt="배틀슈트" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">160 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>전투: </h2><div class="infobox">24 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>이동:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>필요 자원:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('티타늄');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_SERVOMACHINERY.aspx" onmouseover="return tooltip('서보기계');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_SERVOMACHINERY.png" /></a></div>
		
		
		
		<h2>친화력:</h2><div class="infobox"><img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> 순수에서 <span class="color_purity_affinity"> 레벨 4 필요</span></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox"><span class="color_purity_affinity"><img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> 순수 고유 유닛입니다.</span> 강화 장갑으로 방어력을 높인 병사로, 강력한 근접 유닛입니다.</div>
		
		<h2>역사</h2><div class="infobox">병사 개인의 능력을 향상시키는 것은 과거에나 지금이나 군사학에서 가장 중요한 문제입니다. 인간의 신체는 사실 훌륭한 전투 병기입니다. 육중한 무게를 견딜 수 있고 지형에 관계 없이 이동이 가능하며 여러 가지 감각도 갖추고 있고, 훈련을 거치면 결단력과 전술적 반사력도 높아질 수 있습니다. 배틀슈트는 이 모든 범주에서 병사 개인의 가능성을 더욱 높여주는 장비입니다.<br /><br />배틀슈트는 산업계에서 쓰이던 외골격에서 유래했습니다. 최초의 모델은 인간 오퍼레이터가 들고 나를 수 있을 정도의 화물을 빨리 나르는 용도로는 좋았지만, 부피가 큰 화물은 나르기 어려웠고 전원 수명이 짧아 먼 곳까지 이동할 수 없는 것이 단점이었습니다. 하지만 부양석과 그 기이한 단극성 중력장이 발견되면서 다음 세대의 외골격은 깃털처럼 가벼운 핵융합로에서 동력을 얻게 되었습니다. 에너지원 문제가 해결되자 효과적이고 강력한 전투용 방호구를 만드는 데 방해가 되는 마지막 걸림돌이 사라졌고, 배틀슈트는 곧 대량 생산에 들어갔습니다. 이제 전장에 나서는 병사의 전투력은 톤 단위로 측정되고, 기동성은 두 배로 높아졌으며, 무엇보다 최소한의 훈련만으로도 배틀슈트를 마음대로 조종할 수 있게 되었습니다.<br /><br />배틀슈트는 인간의 기본적 힘을 바탕으로 설계되었으므로 병사가 탑승하지 않으면 아무 것도 못하는 장비일 뿐이지만, 보병의 새로운 기준이 되었고 기관총 이래로 군사 전술을 가장 많이 변화시킨 무기가 되었습니다.<br /><br />배틀슈트를 장비한 보병 연대는 흔히 그 연대 사령관의 별명을 연대명으로 하며, 가장 용맹하고 가장 전설적인 사령관의 별명은 그 사령관이 전역하거나 사망한 후에도 길이 남습니다. 아마도 가장 유명한 연대명은 해병대의 '후아니토의 재규어들'일 것입니다. 리처드 후아니토 대령은 거의 80년 전에 전사했지만, 이 연대는 지금도 매일 아침 점호 시에 대령의 이름을 외칩니다.</div>
	</div>
</asp:Content>

