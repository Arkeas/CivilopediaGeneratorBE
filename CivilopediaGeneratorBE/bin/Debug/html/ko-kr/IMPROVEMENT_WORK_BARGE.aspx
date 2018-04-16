<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 바지선</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">바지선</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_WORK_BARGE.png" alt="바지선" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>생산:</h2><div class="infobox"><img src="/civilopediabe/images/algae.png" alt="algae" /> 해조류(으)로부터 +1 <img src="/civilopediabe/images/food.png" alt="food" /> 식량<br /><img src="/civilopediabe/images/coral.png" alt="coral" /> 산호(으)로부터 +1 <img src="/civilopediabe/images/research.png" alt="science" /> 과학<br /><img src="/civilopediabe/images/coral.png" alt="coral" /> 산호(으)로부터 +1 <img src="/civilopediabe/images/production.png" alt="production" /> 생산력</div>
		
		
		<h2>시설이 가능한 자원:</h2><div class="infobox"><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('해조류');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('산호');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a></div>
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_PLANETARY_SURVEY.aspx" onmouseover="return tooltip('행성 조사');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PLANETARY_SURVEY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">바지선은 해안 자원(산호와 해조류)을 얻는 일반적인 시설입니다. 이 해상 작업장은 해안 도시에 건설한 후 쓸모가 있는 소중한 자원을 얻기 위해 견인합니다.</div>
	</div>
</asp:Content>

