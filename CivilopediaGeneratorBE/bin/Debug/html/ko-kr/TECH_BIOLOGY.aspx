<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 생물학</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">생물학</div>
	<img src="/civilopediabe/images/large/TECH_BIOLOGY.png" alt="생물학" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">770 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>지을 수 있는 건물:</h2><div class="infobox"><a href="BUILDING_BIOFUEL_PLANT.aspx" onmouseover="return tooltip('생물연료 플랜트');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_BIOFUEL_PLANT.png" /></a><a href="BUILDING_GROWLAB.aspx" onmouseover="return tooltip('성장연구소');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_GROWLAB.png" /></a></div>
        
		
		<h2>다음의 일꾼 행동을 허용:</h2><div class="infobox"><a href="IMPROVEMENT_DOME.aspx" onmouseover="return tooltip('돔 건설');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_DOME.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox"><span class="color_highlight_building">생물연료 플랜트</span>와 <span class="color_highlight_building">성장연구소</span> 건물을 지을 수 있습니다. 일꾼이 <span class="color_highlight_improvement">돔</span> 타일 시설을 지을 수 있습니다.</div>
		
		<h2>인용:</h2><div class="infobox">"당신의 혈관에는 오래 전 먼지가 되어버린 항성에 깃들어 있던 철분이 흐르고 있습니다. 이것이 바로 우주가 생명체를 사랑하는 방식입니다."<br />- 사마타르 자마 바레, <이것은 유배가 아니다></div>
		<h2>역사</h2><div class="infobox">그동안 인류의 삶과 너무도 동떨어진 식물종들을 인류에게 맞게 개량한다는 점에서 자연과학 연구는 인류의 생존에서 필수불가결합니다. 생물학은 인간을 둘러싼 환경을 이해하기 위한 가장 오래된 수단이라고 해도 과언이 아닐 것입니다. 이 행성에 도착한 직후부터 콜로니 생물학자들은 발생기구학에서부터 고생물학에 이르는 온갖 학문을 동원하여 이 세계의 식물과 동물을 파악하는 연구를 지속했습니다. 지구의 생물종을 이 새로운 생태계에 적응시키는 것, 아니 적어도 개량된 식물과 동물이 이 행성에 자리 잡은 인류의 건강과 안녕에 기여할 수 있는 방법을 개발하는 것도 생물학자들이 수행한 수많은 연구 가운데 하나였습니다. 그 결과 이제 많은 콜로니에서 온실, 토착생물보존소, 식물 정원, 도시의 풍광에 녹아든 특수 연구소 등을 갖추고 있습니다.</div>
	</div>
</asp:Content>

