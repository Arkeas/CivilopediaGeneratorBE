<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 공학</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">공학</div>
	<img src="/civilopediabe/images/large/TECH_ENGINEERING.png" alt="공학" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>다음 유닛 잠금 해제:</h2><div class="infobox"><a href="UNIT_CAVALRY.aspx" onmouseover="return tooltip('기병대');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_CAVALRY.png" /></a></div>
		<h2>지을 수 있는 건물:</h2><div class="infobox"><a href="BUILDING_THORIUM_REACTOR.aspx" onmouseover="return tooltip('토륨 원자로');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_THORIUM_REACTOR.png" /></a><a href="BUILDING_REPAIR_FACILITY.aspx" onmouseover="return tooltip('수리 시설');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_REPAIR_FACILITY.png" /></a></div>
        
		<h2>추가 확인 가능한 자원:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('티타늄');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		
		
	</div>	
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox"><span class="color_highlight_building">토륨 원자로</span>와 <span class="color_highlight_building">수리 시설</span> 건물을 지을 수 있습니다. <span class="color_highlight_unit">기병대</span> 군사 유닛을 만들 수 있습니다. 지도에 <span class"color_highlight_resource">티타늄</span> 자원이 표시됩니다.</div>
		
		<h2>인용:</h2><div class="infobox">"아이들에게 장난감이나 과자에 대한 꿈을 꾸라고 가르치지 말고, 사회기반시설에 대한 꿈을 꾸도록 가르치십시오."<br />- 바딤 코즐로프, <중앙 부처 의사록 공리></div>
		<h2>역사</h2><div class="infobox">실용적 원칙을 적용하여 구조물, 장치, 기계, 시스템을 창안하고 만드는 일은 문명의 주춧돌 노릇을 합니다. 이론 과학이 발전하면서 그런 이론을 공학의 형태로 응용하는 분야도 발전했습니다. 기계, 화학, 전기, 토목 공학은 시드 프로젝트에서 각각 중요한 역할을 했습니다. 콜로니 공학자들은 처음부터 이 새로운 고향에서 필요한 신물질과 새로운 방법들을 찾아내고 개발했습니다. 또한 지구에서 사용하던 기존의 방법을 활용하여 물, 광물, 에너지, 여타 콜로니 주민들이 살아가는 데 반드시 필요한 요소들을 확보했습니다. 공학은 거시적인 분야뿐 아니라 미시적인 분야에도 해당됩니다. 나노기술의 기본인 '나노기기'는 공학자들이 설계한 것으로, 행성 불가사의 같은 거대 프로젝트를 완성하는 데 적용되었습니다.</div>
	</div>
</asp:Content>

