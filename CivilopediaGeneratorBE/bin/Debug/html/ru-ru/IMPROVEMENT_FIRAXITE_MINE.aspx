<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Фиракситовая шахта</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Фиракситовая шахта</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FIRAXITE_MINE.png" alt="Фиракситовая шахта" class="contentimage" />
	<div class="contentleft">
		<h2>Содержание:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>Производительность:</h2><div class="infobox">+3 к <img src="/civilopediabe/images/research.png" alt="science" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> {5_ObjectDesc[2]}</div>
		
		
		<h2>Улучшение ресурсов:</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('Фираксит');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('Роботехника');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Когда люди покинули Землю и поселились на новой, чужой планете, необходимость добывать руду многократно повысилась, ведь этот ресурс нужен для создания чрезвычайно важных для выживания юнитов, зданий и чудес. Шахты можно строить на холмах, чтобы увеличивать производительность. Кроме того, они дают доступ к важным ресурсам, таким как медь, кварц и редкий фираксит.</div>
	</div>
</asp:Content>

