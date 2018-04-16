<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Фабрика</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Фабрика</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MANUFACTORY.png" alt="Фабрика" class="contentimage" />
	<div class="contentleft">
		<h2>Содержание:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		<h2>Здоровье:</h2><div class="infobox">2 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>Производительность:</h2><div class="infobox">3</span> <img src="/civilopediabe/images/production.png" alt="production" /> производства</div>
		
		
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('Роботехника');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		<h2>Место постройки:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('лугов');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('Равнина');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('Пустыня');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('Тундра');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('Снег');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Хотя человечеству пришлось начинать все заново на чужой планете, оно не утратило тяги к промышленности. Поэтому фабрики стали стандартными промышленными комплексами колоний. Эти огромные структуры предназначены для самых различных задач, таких, как выплавка руды и производство товаров. Консолидировав промышленную деятельность на фабриках, колонии стали более эффективно использовать занимаемую территорию и тем самым избежали чрезмерного роста городов, характерного для Старой Земли.</div>
	</div>
</asp:Content>

