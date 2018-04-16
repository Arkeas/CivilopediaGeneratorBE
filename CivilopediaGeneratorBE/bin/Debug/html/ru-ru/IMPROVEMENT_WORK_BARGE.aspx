<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Рабочая баржа</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Рабочая баржа</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_WORK_BARGE.png" alt="Рабочая баржа" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Производительность:</h2><div class="infobox">+1 к <img src="/civilopediabe/images/food.png" alt="food" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/algae.png" alt="algae" /> {5_ObjectDesc[2]}<br />+1 к <img src="/civilopediabe/images/research.png" alt="science" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/coral.png" alt="coral" /> {5_ObjectDesc[2]}<br />+1 к <img src="/civilopediabe/images/production.png" alt="production" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/coral.png" alt="coral" /> {5_ObjectDesc[2]}</div>
		
		
		<h2>Улучшение ресурсов:</h2><div class="infobox"><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('водорослей');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('кораллов');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_PLANETARY_SURVEY.aspx" onmouseover="return tooltip('планетарных исследований');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PLANETARY_SURVEY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Рабочая баржа - обычное улучшение, предназначенное для добычи прибрежных ресурсов (кораллов и водорослей). Эти плавучие платформы собираются в прибрежных городах и транспортируются туда, где находятся ценные ресурсы.</div>
	</div>
</asp:Content>

