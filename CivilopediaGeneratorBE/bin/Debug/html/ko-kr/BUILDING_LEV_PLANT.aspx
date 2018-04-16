<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: LEV 플랜트</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">LEV 플랜트</div>
	<img src="/civilopediabe/images/large/BUILDING_LEV_PLANT.png" alt="LEV 플랜트" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">390 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>유지:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>생산력:</h2><div class="infobox">+4 <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		<h2>필요 자원:</h2><div class="infobox"><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('부양석');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
        
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_MECHATRONICS.aspx" onmouseover="return tooltip('기전 공학');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_MECHATRONICS.png" /></a></div>
		
		
		
		
		<h2>친화력:</h2><div class="infobox"><img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> 순수에서 <span class="color_purity_affinity"> 레벨 5 필요</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>역사</h2><div class="infobox">자기 부상 추진에서 부양석의 가능성이 인정되자, 이른바 '부양석 러시'가 시작되었고, 민간 및 콜로니가 후원하는 탐사자들은 자원이 풍부한 곳에 대한 소유권을 주장하려고 했습니다. 단극성 ‘매장층' 위치는 다소 풍류와 자기 이상의 영향을 받을 수 있으므로, 경쟁은 치열했습니다. 일단 장소를 확보하고 작업을 시작할 수 있으면, 자기 부상 엔진 생산을 위해 근처에 부상 추진 공장이 세워지곤 했습니다. 개인용 운송 수단에 달 작은 엔진이든, 군사 장비나 건축용으로 제작된 엔진이든, 원리는 같습니다. 가공된 단극성 부양석을 전자기장으로 자극을 가해 '뜨게' 만들고, 양극 자석의 수준을 훨씬 뛰어넘는 막대한 수준의 반발을 일으키는 것입니다. 이 과정에서 상당한 폐열이 발생하기 때문에, 엔진은 액체 질소 시스템에서 냉각시켜야 합니다. LEV 플랜트는 자동화되고 로봇을 이용하는 조립 라인 제조 부분의 최근 발전과 양자 프로그래밍, 그리고 고속 사이버네틱스 기술을 통합했습니다. 대부분의 LEV 플랜트는 옛 지구에서 1980년에 제조 부문에서 개발된, 수량화된 가치 목표를 세우고 정의된 일련의 품질 보증 검사를 수행하여 변동성을 최소화한다는 식스 시그마 이론에 따라 운영되었습니다. 콜로니 표준에서 허용되는 최소 평균은 백만 단위당 결함 부품 2.6개입니다. 식스 시그마 운영 정책을 채택하면서, 자기 부상 운송 수단은 대부분의 콜로니에서 가장 믿을 수 있고, 일반적인 운송 수단이 되었습니다.</div>
	</div>
</asp:Content>

