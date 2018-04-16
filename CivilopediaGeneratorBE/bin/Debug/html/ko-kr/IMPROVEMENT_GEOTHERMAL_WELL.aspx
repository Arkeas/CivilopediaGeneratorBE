<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 지열 우물</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">지열 우물</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_GEOTHERMAL_WELL.png" alt="지열 우물" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>생산:</h2><div class="infobox"><img src="/civilopediabe/images/geothermal_energy.png" alt="geothermal energy" /> 지열(으)로부터 +3 <img src="/civilopediabe/images/energy.png" alt="energy" /> 에너지</div>
		
		
		<h2>시설이 가능한 자원:</h2><div class="infobox"><a href="RESOURCE_GEOTHERMAL_ENERGY.aspx" onmouseover="return tooltip('지열');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_GEOTHERMAL_ENERGY.png" /></a></div>
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_GEOPHYSICS.aspx" onmouseover="return tooltip('지구물리학');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_GEOPHYSICS.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">콜로니는 유정을 통해 새로운 세계에서 천연 에너지를 이용할 수 있습니다. 석유가 계속 존재하는 한, 이 새로운 자원을 통해 육지의 유정은 아직 인류 산업의 중요한 부분으로 남아 있습니다. 유정을 육지에 건설하면 필요한 만큼 지열과 제노매스 자원을 얻을 수 있습니다.</div>
	</div>
</asp:Content>

