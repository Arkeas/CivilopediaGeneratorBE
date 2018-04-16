<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 유정</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">유정</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PETROL_WELL.png" alt="유정" class="contentimage" />
	<div class="contentleft">
		
		<h2>건강:</h2><div class="infobox">1 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>생산:</h2><div class="infobox"><img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> 석유(으)로부터 +2 <img src="/civilopediabe/images/energy.png" alt="energy" /> 에너지<br /><img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> 석유(으)로부터 +1 <img src="/civilopediabe/images/production.png" alt="production" /> 생산력</div>
		
		
		<h2>시설이 가능한 자원:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('석유');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('화학');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">콜로니는 유정을 통해 새로운 세계에서 천연 에너지를 이용할 수 있습니다. 석유가 계속 존재하는 한, 이 새로운 자원을 통해 육지의 유정은 아직 인류 산업의 중요한 부분으로 남아 있습니다. 유정을 육지에 건설하면 필요한 만큼 지열과 제노매스 자원을 얻을 수 있습니다.</div>
	</div>
</asp:Content>

