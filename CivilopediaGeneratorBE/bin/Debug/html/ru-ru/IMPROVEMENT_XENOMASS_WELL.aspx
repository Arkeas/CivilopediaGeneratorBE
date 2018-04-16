<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Ксеноскважина</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Ксеноскважина</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_XENOMASS_WELL.png" alt="Ксеноскважина" class="contentimage" />
	<div class="contentleft">
		<h2>Содержание:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>Производительность:</h2><div class="infobox">+3 к <img src="/civilopediabe/images/food.png" alt="food" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/xenomass.png" alt="xenomass" /> {5_ObjectDesc[2]}</div>
		
		
		<h2>Улучшение ресурсов:</h2><div class="infobox"><a href="RESOURCE_XENOMASS.aspx" onmouseover="return tooltip('Ксеномасса');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_XENOMASS.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_ALIEN_SCIENCES.aspx" onmouseover="return tooltip('Наука инопланетян');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ALIEN_SCIENCES.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Благодаря скважинам колонии могут использовать запасы энергии новой планеты. Хотя нефть здесь тоже есть, более важную роль играют новые ресурсы. Если пробурить скважину на суше, она может дать доступ к невероятно полезным геотермальным ресурсам и ксеномассе.</div>
	</div>
</asp:Content>

