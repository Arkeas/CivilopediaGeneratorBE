<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Нефтяная скважина</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Нефтяная скважина</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PETROL_WELL.png" alt="Нефтяная скважина" class="contentimage" />
	<div class="contentleft">
		
		<h2>Здоровье:</h2><div class="infobox">1 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>Производительность:</h2><div class="infobox">+2 к <img src="/civilopediabe/images/energy.png" alt="energy" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> {5_ObjectDesc[2]}<br />+1 к <img src="/civilopediabe/images/production.png" alt="production" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> {5_ObjectDesc[2]}</div>
		
		
		<h2>Улучшение ресурсов:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Нефть');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('Химия');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Благодаря скважинам колонии могут использовать запасы энергии новой планеты. Хотя нефть здесь тоже есть, более важную роль играют новые ресурсы. Если пробурить скважину на суше, она может дать доступ к невероятно полезным геотермальным ресурсам и ксеномассе.</div>
	</div>
</asp:Content>

