<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 기후 조절기</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">기후 조절기</div>
	<img src="/civilopediabe/images/large/UNIT_WEATHER_CONTROLLER.png" alt="기후 조절기" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">130 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>궤도 효과 범위:</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>궤도 선회 기간:</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>필요 자원:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('석유');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('티타늄');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_CLIMATE_CONTROL.aspx" onmouseover="return tooltip('기후 조절');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CLIMATE_CONTROL.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">궤도 유닛으로, 타일에 +1 <img src="/civilopediabe/images/food.png" alt="food" /> 식량을 추가합니다. 수명이 지속되는 동안 아무 시설이 없는 타일에 새로운 기본 자원을 1 또는 2만큼 생성합니다.</div>
		
		<h2>역사</h2><div class="infobox">기후 조절기는 태양에너지 수집기와 유사하며 콜로니가 행성에서의 삶을 보다 윤택하게 살 수 있도록 궤도 네트워크를 활용할 수 있게 해줍니다. 기후 조절기는 정밀한 전자기량을 활용하여 범위 내의 모든 타일에서 가장 선호하는 기후를 만들어냅니다. 덕분에 콜로니는 식량 생산을 최대화하고, 소유한 타일당 비축량을 늘릴 수 있습니다. 추가 보너스로, 기후 조절기는 아무 시설이 없는 타일의 자연 환경을 변화시켜 이따금씩 기본 자원을 출현시킨다고도 알려져 있습니다.</div>
	</div>
</asp:Content>

