<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Шахта</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Шахта</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MINE.png" alt="Шахта" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Производительность:</h2><div class="infobox">2</span> <img src="/civilopediabe/images/production.png" alt="production" /> производства<br />+1 к <img src="/civilopediabe/images/energy.png" alt="energy" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/copper.png" alt="copper" /> {5_ObjectDesc[2]}<br />+1 к <img src="/civilopediabe/images/culture.png" alt="culture" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/gold.png" alt="gold" /> {5_ObjectDesc[2]}<br />+1 к <img src="/civilopediabe/images/research.png" alt="science" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/silica.png" alt="silica" /> {5_ObjectDesc[2]}<br />+3 к <img src="/civilopediabe/images/production.png" alt="production" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/titanium.png" alt="titanium" /> {5_ObjectDesc[2]}</div>
		
		
		<h2>Улучшение ресурсов:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Титан');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a><a href="RESOURCE_GOLD.aspx" onmouseover="return tooltip('Золото');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_GOLD.png" /></a><a href="RESOURCE_COPPER.aspx" onmouseover="return tooltip('Медь');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_COPPER.png" /></a><a href="RESOURCE_SILICA.aspx" onmouseover="return tooltip('Кварц');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_SILICA.png" /></a></div>
		
		<h2>Место постройки:</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('холмов');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Когда люди покинули Землю и поселились на новой, чужой планете, необходимость добывать руду многократно повысилась, ведь этот ресурс нужен для создания чрезвычайно важных для выживания юнитов, зданий и чудес. Шахты можно строить на холмах, чтобы увеличивать производительность. Кроме того, они дают доступ к важным ресурсам, таким как медь, кварц и редкий фираксит.</div>
	</div>
</asp:Content>

