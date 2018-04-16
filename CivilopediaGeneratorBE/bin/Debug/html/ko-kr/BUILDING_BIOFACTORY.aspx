<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 생물공장</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">생물공장</div>
	<img src="/civilopediabe/images/large/BUILDING_BIOFACTORY.png" alt="생물공장" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">290 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>유지:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>생산력:</h2><div class="infobox">+3 <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		
        
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_ORGANICS.aspx" onmouseover="return tooltip('유기화합물');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ORGANICS.png" /></a></div>
		
		
		
		
		<h2>친화력:</h2><div class="infobox"><img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> 조화에서 <span class="color_harmony_affinity"> 레벨 4 필요</span></div>
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox"><img src="/civilopediabe/images/chitin.png" alt="chitin" /> 키틴질(으)로부터 +1 <img src="/civilopediabe/images/production.png" alt="production" /> 생산력</div>
		
		<h2>역사</h2><div class="infobox">콜로니의 생물공장은 이주단이 이 행성의 토착 생명체에 대한 잠재성을 깨달으면서 세워졌습니다. 수천 년 동안 인류는 농업과 의료 분야에서 유기체를 이용하여 화학 물질과 소재를 만들어 생명 공학을 활용해 왔습니다. 21세기 후반, 환경 문제와 줄어드는 자원 문제에 직면하면서 옛 지구의 과학자들은 게놈, 합성 물질, 금속, 직물, 바이오 로봇, 생물연료에 기존 기술과 신기술을 응용했습니다. 행성 착륙 후 많은 종류의 산호충, 균류, 조류를 조사하고 분류화했지만, 이들을 완전히 이용하게 된 것은 몇 세대 후에나 가능했습니다. 현재 생물공장은 이 행성의 바다에서 채취한 산호충을 사용하여 건설 자재, 여과 장치, 약품, 희귀 금속, 심지어 보석류도 만들고 있습니다. 조류는 주로 생물연료의 기본 재료로 사용되지만, 대부분의 콜로니에선 세균 배양액, 알긴산염, 비료, 영양제, 많은 색소를 만드는 원료이기도 합니다. 또한 이 세계의 풍부하고 다양한 토착 균류를 활용하는 생명 공학의 활용처는, 실제로 매년 발견되는 새로운 균류까지 포함하면 무한할 것으로 예상됩니다. 균류를 이용한 공장 중 가장 주목할 만한 공장은, 양자 컴퓨터 및 자율 로봇과 자기 부상 운송 수단의 핵심이라고 할 수 있는 폴리아미드 극세사와 보온성 나노 전자 절연체를 생산하기 위해 현지 균종을 사용하는 생물공장입니다.</div>
	</div>
</asp:Content>

