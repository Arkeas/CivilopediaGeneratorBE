<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 스카이 크레인</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">스카이 크레인</div>
	<img src="/civilopediabe/images/large/BUILDING_SKYCRANE.png" alt="스카이 크레인" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">470 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>유지:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>생산력:</h2><div class="infobox">+15% <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		<h2>필요 자원:</h2><div class="infobox"><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('부양석');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
        
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_ASTRODYNAMICS.aspx" onmouseover="return tooltip('우주역학');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ASTRODYNAMICS.png" /></a></div>
		
		
		
		
		<h2>친화력:</h2><div class="infobox"><img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> 순수에서 <span class="color_purity_affinity"> 레벨 10 필요</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>역사</h2><div class="infobox">자기 부상 엔진은 단순히 건설에 그치지 않고 수많은 분야에 응용되고 있습니다. 천년 동안 인간은 크레인을 사용하여 무거운 물체를 들고 옮겼습니다. 커다란 자기 부상 엔진이 설계되었을 때 처음 사용한 곳이 지표와 저궤도 프로젝트에서 표면 위에서 작동할 수 있는 크레인 제작이라는 것도 예상했던 바입니다. 이러한 자기 부상의 특징 때문에 맨 아래에서 모든 모멘트의 합계는 0에 가깝습니다. 그래서 스카이 크레인은 매우 안정적이고 스카이 크레인의 리프트 부하는 지상 크레인 팁 부하의 보통 85%를 초과합니다. 콜로니 스카이 크레인은 보통 두 종류로 나뉘는데, 후크와 라인 메커니즘이 플랫폼 아래에 위치한 오버헤드(또는 브릿지)형과 플랫폼 측면 너머 암이 연장되는 사이드리프트 크레인이 있습니다. 가장 큰 스카이 크레인은 둘 다 갖고 있으며, 일부 통합된 베셀 빔 시스템도 둘 다 장착하고 있습니다. 지상 크레인이 안고 있는 가장 기본적인 문제는 수평 조정인데, 여러 자기 부상 엔진을 장착한 스카이 크레인에서는 이 문제를 피할 수 있습니다. 저궤도 건설에서 스카이 크레인은 해머헤드 구성에서 유압식 암을 사용하여 커다란 부품을 옮기고 조작하는 일반적인 장치입니다. 저궤도에서 부하 중량은 스카이 크레인에 별 문제가 되지 않지만, 부하 관성이라면... 아무튼 궤도 건설을 위해 특별히 제작된 많은 스카이 크레인은 다양한 형태의 관성 조절기를 설치하고 있습니다.</div>
	</div>
</asp:Content>

