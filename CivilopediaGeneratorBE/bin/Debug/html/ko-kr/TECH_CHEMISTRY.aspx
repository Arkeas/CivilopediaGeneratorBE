<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 화학</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">화학</div>
	<img src="/civilopediabe/images/large/TECH_CHEMISTRY.png" alt="화학" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>지을 수 있는 건물:</h2><div class="infobox"><a href="BUILDING_LABORATORY.aspx" onmouseover="return tooltip('연구소');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_LABORATORY.png" /></a><a href="BUILDING_RECYCLER.aspx" onmouseover="return tooltip('재활용 장치');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RECYCLER.png" /></a></div>
        
		<h2>추가 확인 가능한 자원:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('석유');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>다음의 일꾼 행동을 허용:</h2><div class="infobox"><a href="IMPROVEMENT_PETROL_WELL.aspx" onmouseover="return tooltip('유정 건설');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PETROL_WELL.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox"><span class="color_highlight_building">연구소</span>와 <span class="color_highlight_building">재활용 장치</span> 건물을 지을 수 있습니다. 일꾼이 <span class="color_highlight_improvement">유정</span> 타일 시설을 지을 수 있습니다. 지도에 <span class"color_highlight_resource">석유</span> 자원이 표시됩니다.</div>
		
		<h2>인용:</h2><div class="infobox">"40억 년이나 된 세계에서 얻을 수 있는 어마어마한 자원을 얼마 안 되는 사람들이 나눠가지다니. 우린 여기서 부자가 될 겁니다!"<br />- 후타마, <우리 모두는 번영할 것입니다></div>
		<h2>역사</h2><div class="infobox">베이컨, 보일, 후크, 메이오가 연금술을 과학으로 바꾸고 이 세상을 구성하는 원소들에 엄격한 순서를 부여했던 고대에서부터, 화학은 과학 분야에서도 가장 중요한 위치를 차지했습니다. 화학의 법칙이 성문화되고 물질의 본성이 파악되면서, 화학은 산업과 과학 양쪽에서 필수불가결한 분야가 되었습니다. 인류가 우주로 진출하면서 우주화학, 초분자화학, 유기금속화학 같은 가지도 생겨났습니다. 새로운 행성에서는 파이락사이트와 부양석 같은 새로운 발견이 이어졌고, 그로 인해 화학 연구는 뜻밖의 방향으로 나아갔다. 인간이 우주를 개척하는 데 있어 화학과 그 응용 분야야말로 가장 필요한 요소일 것입니다. </div>
	</div>
</asp:Content>

