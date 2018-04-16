<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 석유</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">석유</div>
	<img src="/civilopediabe/images/large/RESOURCE_PETROLEUM.png" alt="석유" class="contentimage" />
	<div class="contentleft">
		<h2>생산:</h2><div class="infobox">생산 없음</div>
		
<h2>발견 조건: </h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('화학');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		<h2>발견되는 지형: </h2><div class="infobox"><a href="FEATURE_MARSH.aspx" onmouseover="return tooltip('습지');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_MARSH.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('사막');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('툰드라');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('설원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a><a href="TERRAIN_COAST.aspx" onmouseover="return tooltip('해안');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_COAST.png" /></a></div>
		<h2>필요한 시설:</h2><div class="infobox"><a href="IMPROVEMENT_PETROL_WELL.aspx" onmouseover="return tooltip('유정');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PETROL_WELL.png" /></a></div>
	</div>
	<div class="contentright">
		
<h2>게임 정보:</h2><div class="infobox">궤도 유닛 다수가 사용합니다.</div>
		<h2>역사</h2><div class="infobox">석유는 오래 전에 부패하여 화석화된 동식물에게서 나오는 액체 유기화합물과 탄화수소가 결합한 것으로, 이 세계에서는 주로 해조류와 이형포자식물의 잔해로 이루어져 있으며 퇴적암 아래나 그 속에 함유되어 있습니다. 지구의 원유와 비슷하기는 하지만, 이 행성의 원유는 펜탄, 헥산, 헵탄 같은 중탄화수소의 농도가 높은데, 이 행성이 나이가 젊고 최근 화산 활동이 활발했기 때문입니다. 따라서 이 행성의 원유를 분별 증류하여 알칸을 분리하고 접촉 분해로 나프텐을 분리하는 정제 과정은 지구에서보다 복잡합니다. 그럼에도, 초창기 이주단은 서둘러 석유 시추장을 파고 정유공장을 세워 가솔린, 디젤, 제트유, 등유 등을 생산하여 지구에서 가져온 운송장비, 농업용 시설, 건축용 장비, 군사용 장비를 가동했습니다. 처음 토종 원유를 정제하여 만든 연료는 옥탄가와 세탄가가 낮았으나(38을 넘는 경우가 드물었음), 정제 과정에 대한 연구를 거듭한 끝에 비약적으로 높일 수 있었습니다. 자기 부상 및 핵융합과 같은 다른 추진력이 발전하고 실현되면서 콜로니 거주지의 석유 수요는 점점 줄어들었습니다. 하지만 특정 플라스틱 및 약품 제조에 필요한 시약을 생산하기 위한 석유 정제는 여전히 개척지에서 꼭 필요한 산업입니다.</div>
	</div>
</asp:Content>

