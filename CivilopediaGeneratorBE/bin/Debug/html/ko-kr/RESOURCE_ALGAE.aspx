<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 해조류</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">해조류</div>
	<img src="/civilopediabe/images/large/RESOURCE_ALGAE.png" alt="해조류" class="contentimage" />
	<div class="contentleft">
		<h2>생산:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> 식량</div>
		
		<h2>발견되는 지형: </h2><div class="infobox"><a href="TERRAIN_COAST.aspx" onmouseover="return tooltip('해안');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_COAST.png" /></a></div>
		<h2>필요한 시설:</h2><div class="infobox"><a href="IMPROVEMENT_WORK_BARGE.aspx" onmouseover="return tooltip('바지선');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_WORK_BARGE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>역사</h2><div class="infobox">지구에서 조류는 모든 바다에 서식하는 단순한 형태의 독립 영양 진핵 생물로, 크기는 단세포 규조에서부터 길이가 60m에 달하는 자이언트 켈프까지 아주 다양합니다. 수 세기에 걸친 오염이 ‘위대한 과오’의 낙진으로 더욱 악화되는 바람에, 시드 프로젝트 이전에 지구 조류의 다양성과 개체수는 크게 줄어들고 있었습니다. 하지만 이 행성에서 조류는 주로 100m 이하 얕은 깊이의 물에서 여러 가지 형태로 번성하고 있습니다. 개척지에서는 연안에 시설을 건설하자마자 해조류, 특히 해초와 각종 켈프를 수확하기 시작했습니다. 해조류는 고품질의 식량 자원일 뿐 아니라 비료, 색소, 한천, 알긴산염을 만드는 데도 사용됩니다. 범아시아 콜로니의 과학자들은 또한 2세기 전 지구에서 시작되었으나 조류의 수가 급감하는 바람에 비용 효율을 맞추지 못해 중단했던 연구를 재개, 조류를 재생가능 생물연료로 활용하는 여러 가지 방법을 개발했습니다. 하지만 뭐니뭐니해도 조류는 양질의 오메가 3 지방산을 함유하고 있으므로 식량으로 활용하는 것이 으뜸입니다. 지구에서 이식된 각종 조류들이 이 새로운 세계의 여러 문화권에서 중요한 위치를 차지하고 있습니다.</div>
	</div>
</asp:Content>

