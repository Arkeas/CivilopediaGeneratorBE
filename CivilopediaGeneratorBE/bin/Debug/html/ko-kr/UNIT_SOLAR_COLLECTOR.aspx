<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 태양에너지 수집기</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">태양에너지 수집기</div>
	<img src="/civilopediabe/images/large/UNIT_SOLAR_COLLECTOR.png" alt="태양에너지 수집기" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">80 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>궤도 효과 범위:</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>궤도 선회 기간:</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_PHOTOSYSTEMS.aspx" onmouseover="return tooltip('광화학계');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PHOTOSYSTEMS.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">궤도 유닛으로, 플레이어의 타일에 +1 <img src="/civilopediabe/images/energy.png" alt="energy" /> 에너지를 추가합니다. 또한 범위 안에 있는 모든 도시에 +20% <img src="/civilopediabe/images/energy.png" alt="energy" /> 에너지를 추가합니다.</div>
		
		<h2>역사</h2><div class="infobox">태양에너지 수집기는 궤도 레이저와 독기 응축기 같은 구식 인공위성의 설계를 토대로 개발되었습니다. 기본적으로 궤도 태양 전지판인 태양에너지 수집기는 태양에너지를 모아 순수 에너지로 변환한 다음 지상으로 전송합니다. 이 과정에서 상당한 에너지 '누출'이 있지만, 누출되는 에너지 양이 사소해 보일 정도로 많은 에너지를 생산합니다. 태양에너지 수집기는 도시 하나와 그보다 더 큰 콜로니 하나를 감당할 정도로 많은 에너지를 수집할 수 있습니다. 태양에너지로부터 직접 전송을 받는 도시는 에너지 증가분을 받는 반면, 콜로니는 해당 콜로니가 소유한 모든 타일의 에너지에 해당하는 양을 받습니다.</div>
	</div>
</asp:Content>

