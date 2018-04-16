<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 전투기</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">전투기</div>
	<img src="/civilopediabe/images/large/UNIT_AIR_FIGHTER.png" alt="전투기" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">100 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		<h2>원거리 전투: </h2><div class="infobox">10 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>사정거리:</h2><div class="infobox">4 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		
		
		
		
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('로봇 공학');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">공중 유닛으로 기지에서 멀리 떨어진 도시나 항공모함을 공격합니다.</div>
		
		<h2>역사</h2><div class="infobox">전투기는 초경량 항공기로 이 외계 환경을 위해 특별히 설계되었습니다. 이주단이 행성의 대기 및 중력 조건을 완전히 파악하지는 못했기에, 전투기는 환경 조건에 필요한 대로 맞춤형 제작이 자유롭도록 만들어졌습니다. 이 ‘비행기’는 비행 범위는 한정되었지만 가장 보편적인 조건에서는 기능을 제법 잘 수행했습니다.<br /><br />시간이 흐르면서 전투기는 콜로니 세계에서 발견한 독특한 에너지원과 광물을 이용하도록 개조되었는데, 그 중 가장 특징적인 것이 부양석입니다. 부양석을 사용하게 되면서 항공기는 더 날렵해지고 기동성도 크게 높아졌고, 조종사는 이멜만 반전, 연속 횡전, 피치백 같은 옛 지구의 공중 기동을 변형시켜 이 행성의 보편적인 환경에서 조종실력을 과시할 수 있게 되었습니다. 좀더 대담한 조종사들은 펠리컨이나 사이드리얼 같은 새로운 기동술을 개발하기도 했습니다. 이렇게 비행 기술이 발달하면서 전투기들은 외계생명체와의 싸움에서, 그리고 때로는 콜로니와의 전쟁에서 대활약을 하게 되었습니다.</div>
	</div>
</asp:Content>

