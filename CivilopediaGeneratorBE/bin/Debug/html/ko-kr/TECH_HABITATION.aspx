<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 거주지</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">거주지</div>
	<img src="/civilopediabe/images/large/TECH_HABITATION.png" alt="거주지" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">50 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>다음 유닛 잠금 해제:</h2><div class="infobox"><a href="UNIT_WORKER.aspx" onmouseover="return tooltip('일꾼');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_WORKER.png" /></a><a href="UNIT_EXPLORER.aspx" onmouseover="return tooltip('탐험가');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_EXPLORER.png" /></a><a href="UNIT_MARINE.aspx" onmouseover="return tooltip('군인');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_MARINE.png" /></a></div>
		<h2>지을 수 있는 건물:</h2><div class="infobox"><a href="BUILDING_RELIC.aspx" onmouseover="return tooltip('옛 지구의 유물');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RELIC.png" /></a><a href="BUILDING_CLINIC.aspx" onmouseover="return tooltip('클리닉');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_CLINIC.png" /></a></div>
        
		
		
		
	</div>	
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox"><span class="color_highlight_building">클리닉</span>과 <span class="color_highlight_building">옛 지구의 유물</span> 건물을 지을 수 있습니다. <span class="color_highlight_unit">일꾼</span>, <span class="color_highlight_unit">탐험가</span>,  <span class="color_highlight_unit">군인</span> 유닛을 사용할 수 있습니다.</div>
		<h2>특수 능력:</h2><div class="infobox">강 위에 다리 건설 허용<br /></div>
		<h2>인용:</h2><div class="infobox">"한때 우리는 신이 우리의 운명을 통제한다고 믿었습니다. 하지만 자연에 대해 더 알게 되면서 그런 생각이 바뀌었습니다. 이제 우리는 스스로의 운명을 통제하니, 이전으로 돌아가지 않기를 바랍시다."<br />- 익명</div>
		<h2>역사</h2><div class="infobox">인간에게 가장 기본적으로 필요한 것은 식량과 물, 그리고 거처일 것입니다. 21세기 옛 지구의 인류는 이미 진흙벽돌집, 두터운 성벽으로 둘러싼 성, 콘크리트 마천루를 벗어나 자동화되어 '스스로 건설하는' 구조물에 살고 있었습니다. 해수면이 높아져 인류가 살 만한 땅이 크게 줄어든 상황에서 후자와 같은 자동조립식 건물은 거주 문제를 해결해 주었고, 시드 프로젝트 동안에도 콜로니의 벤처 기업들도 활용했습니다. 물론 이 행성에서 자립 가능한 거주지는 이주단의 주거지 이상의 의미가 있어 창고, 문화 센터, 행정 구조물 등도 포함되었습니다.</div>
	</div>
</asp:Content>

