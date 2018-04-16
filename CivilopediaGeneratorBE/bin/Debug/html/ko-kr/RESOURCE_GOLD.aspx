<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 금</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">금</div>
	<img src="/civilopediabe/images/large/RESOURCE_GOLD.png" alt="금" class="contentimage" />
	<div class="contentleft">
		<h2>생산:</h2><div class="infobox">1 <img src="/civilopediabe/images/culture.png" alt="culture" /> 문화</div>
		
		<h2>발견되는 지형: </h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('언덕');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('초원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('평원');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('사막');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
		<h2>필요한 시설:</h2><div class="infobox"><a href="IMPROVEMENT_MINE.aspx" onmouseover="return tooltip('광산');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_MINE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>역사</h2><div class="infobox">원자량 196.95, 원자번호 79인 금은 그 희소성, 광채, 가단성, 사실상 거의 불멸에 가까운 성질 덕분에 옛 지구에서 아주 가치 있는 금속이었습니다(백만 당 0.005 미만). ‘위대한 과오’ 이전 많은 국가에서 금은 국가 통화의 기준이었고 인류 문명에서 아주 오래 전부터 거래와 절도의 대상이었습니다. 하지만 이 행성에서는 금이 열수 정맥에서 흔하게 채굴되며 개인 장신구를 제외하면 주로 산업과 기술 분야에 사용됩니다. 금은 전기 전도성이 있으면서 동시에 부식에 강하므로 습하거나 염도가 높은 환경에서 사용하기 좋으며, 컴퓨터, 통신 장비, 반도체, 우주선, 대부분의 엔진 등에 쓰입니다. 또한 금은 고급 배틀 슈트, 장갑 차량, 해군 함선, 여타 군사용 하드웨어의 효율적 작동에 없어서는 안 되는 물질이기도 하죠. 이 행성에서 금은 흔한 광석이기 때문에 채굴과 제련이 간단하며, 심지어 일반 탐사자도 할 수 있을 정도입니다. 지구에서 너무나 멀리 떨어진 이 행성에서도 이 고귀한 금속과 인류는 밀접한 관계를 맺고 있습니다.</div>
	</div>
</asp:Content>

