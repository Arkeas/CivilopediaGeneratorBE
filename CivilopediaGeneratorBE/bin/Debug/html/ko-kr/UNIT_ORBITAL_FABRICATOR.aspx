<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 궤도 조립기</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">궤도 조립기</div>
	<img src="/civilopediabe/images/large/UNIT_ORBITAL_FABRICATOR.png" alt="궤도 조립기" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">130 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>궤도 효과 범위:</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>궤도 선회 기간:</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>필요 자원:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('석유');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('티타늄');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_GEOSCAPING.aspx" onmouseover="return tooltip('지오스케이프');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_GEOSCAPING.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">궤도 유닛으로, 타일에 +1 <img src="/civilopediabe/images/production.png" alt="production" />  생산력을 추가합니다. 수명이 지속되는 동안 아무 시설이 없는 타일에 새로운 전략 자원을 1 또는 2만큼 생성합니다.</div>
		
		<h2>역사</h2><div class="infobox">궤도 조립기는 태양에너지 수집기와 기후 조절기의 혼합 형태로, 태양에너지와 전자기 전하를 모두 이용하여 국지적으로 행성 압력을 높일 수 있습니다. 이 압력으로 특정 자원의 강도가 상승하여 해당 타일을 소유한 콜로니는 생산력을 얻게 됩니다. 기후 조절기와 마찬가지로, 때로 이 과정에서 개발되지 않은 지역에 영구적 변화가 가해지게 되어 전략 자원이 생성되는 혜택을 누릴 수도 있습니다.</div>
	</div>
</asp:Content>

