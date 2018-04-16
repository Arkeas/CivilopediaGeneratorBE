<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Геотермальная скважина</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Геотермальная скважина</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_GEOTHERMAL_WELL.png" alt="Геотермальная скважина" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Производительность:</h2><div class="infobox">+3 к <img src="/civilopediabe/images/energy.png" alt="energy" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/geothermal_energy.png" alt="geothermal energy" /> {5_ObjectDesc[2]}</div>
		
		
		<h2>Улучшение ресурсов:</h2><div class="infobox"><a href="RESOURCE_GEOTHERMAL_ENERGY.aspx" onmouseover="return tooltip('Геотермальный источник');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_GEOTHERMAL_ENERGY.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_GEOPHYSICS.aspx" onmouseover="return tooltip('Геофизика');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_GEOPHYSICS.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Благодаря скважинам колонии могут использовать запасы энергии новой планеты. Хотя нефть здесь тоже есть, более важную роль играют новые ресурсы. Если пробурить скважину на суше, она может дать доступ к невероятно полезным геотермальным ресурсам и ксеномассе.</div>
	</div>
</asp:Content>

