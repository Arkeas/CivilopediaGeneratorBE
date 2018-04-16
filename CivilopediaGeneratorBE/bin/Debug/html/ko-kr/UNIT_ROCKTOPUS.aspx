<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 록토퍼스</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">록토퍼스</div>
	<img src="/civilopediabe/images/large/UNIT_ROCKTOPUS.png" alt="록토퍼스" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">280 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		<h2>원거리 전투: </h2><div class="infobox">60 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>사정거리:</h2><div class="infobox">2 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		<h2>이동:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		<h2>궤도 효과 범위:</h2><div class="infobox">2 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>궤도 선회 기간:</h2><div class="infobox">10 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>필요 자원:</h2><div class="infobox"><a href="RESOURCE_XENOMASS.aspx" onmouseover="return tooltip('제노매스');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_XENOMASS.png" /></a><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('부양석');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_DESIGNER_LIFEFORMS.aspx" onmouseover="return tooltip('제작형 생명체');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_DESIGNER_LIFEFORMS.png" /></a></div>
		
		
		
		<h2>친화력:</h2><div class="infobox"><img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> 조화에서 <span class="color_harmony_affinity"> 레벨 9 필요</span></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox"><span class="color_harmony_affinity"><img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> 조화 고유 유닛입니다.</span> 생명공학의 산물인 살아 있는 궤도 유닛으로 궤도 배치 범위 내에서 이동이 가능하며 주변에 제한적인 궤도 범위를 형성합니다.</div>
		
		<h2>역사</h2><div class="infobox">부양석의 여러 특성 중에서도 특히 경이로운 것은, 지구/행성 생화학 혼성체와 생체적합성이 높다는 사실입니다. 이 행성의 토착종도 그 생화학적 특성이 부양석과 온전히 호환되는 경우는 없습니다(토착종인 하늘고래의 공중석은 소화 과정에서 부유 방광에 저장되지만 하늘고래의 몸과 하나가 되지는 않습니다). 하지만 지구종과 토착종의 생화학적 특성이 마두르스키 과정에서 결합되면, 그 결과로 만들어진 조직은 부양석과 쉽게 통합됩니다. 이것이 돌파구가 되어 록토퍼스를 만들어내게 되었습니다.<br /><br />록토퍼스는 거대한 콜로니 생명체로 부분적으로 제련한 부양석이 대량 공급되는 주변에서 성장합니다(필요한 무기물을 얻을 수 있기 때문입니다). 그 이름은 지구의 문어(옥토퍼스/Octopus)를 살짝 비튼 것이지만, 록토퍼스는 문어보다 단순한 동물인 자포동물(해파리 같은)에 더 가깝습니다. 몸 크기는 한계가 없고 어디에서 성장하느냐에 따라 달라지는데, 가장 거대한 개체는 특수 탱크에서 만들어지며 엄청난 부양석을 품고 있어 공중을 자유로이 떠다닐 수 있고 심지어 행성 궤도까지 올라갈 수도 있습니다. 록토퍼스는 몸 속의 '자극'이 지시하는 방향을 따라 움직이며, 일단 공중에 떠오르면 몸 조직이 온전할 동안, 또는 부양석이 방사선으로 분해되기 전까지 무한정 떠 있을 수 있습니다(그래서 록토퍼스의 개별 세포를 보존하고 강화하기 위한 연구가 진행되고 있습니다). 록토퍼스는 대기권 상층에서 궤도를 따라 움직일 수 있고 에너지 비용을 적게 들이고도 새로운 궤도에 진입할 수 있으므로 인공위성 중에서도 독특한 위상을 차지하고 있습니다. 촉수를 뻗어 대기권 상층의 희박한 영양을 섭취하거나 태양광을 흡수하여 에너지로 삼습니다.<br /><br />군사 이론가들은 궤도 위상을 스스로 바꿀 수 있는 궤도 유닛의 가치가 얼마나 큰지 잘 알고 있습니다. 하지만 그 외에도 록토퍼스에는 부인할 수 없는 아름다움이 있습니다. 지구의 원시적인 선조인 해파리가 바닷물 속에서 그러하듯, 록토퍼스의 촉수가 우주의 방사선풍이나 대기권 상층의 돌풍에 따라 하늘거리는 모습은 가냘프고 우아합니다. 하지만 해파리와 달리 록토퍼스는 강인한 생명체로, 우주의 진공과 방사선 같은 혹독한 환경에서도 살아남을 수 있습니다. 여러 가지 면에서 자신이 품고 있는 부양석보다도 단단하다고 하겠네요.</div>
	</div>
</asp:Content>

