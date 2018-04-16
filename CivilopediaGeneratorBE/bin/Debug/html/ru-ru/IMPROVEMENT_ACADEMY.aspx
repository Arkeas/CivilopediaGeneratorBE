<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Академия</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Академия</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_ACADEMY.png" alt="Академия" class="contentimage" />
	<div class="contentleft">
		<h2>Содержание:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>Производительность:</h2><div class="infobox">3</span> <img src="/civilopediabe/images/research.png" alt="research" /> науки</div>
		
		
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_COGNITION.aspx" onmouseover="return tooltip('Познание');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_COGNITION.png" /></a></div>
		<h2>Место постройки:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('лугов');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('Равнина');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('Пустыня');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('Тундра');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('Снег');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Поскольку выживание колонии напрямую зависит от знаний ее обитателей, образование стало важной частью жизни. Задача академий - позаботиться о том, чтобы все граждане обладали базовыми знаниями, содержащимися в так называемом "ядре текстов", которые позволяют дальше выбрать любую специализацию, полезную для колонии. Хотя в основе преподавания в академиях и лежит государственная идеология колонии, уровень образования, предоставляемый ими, все же превосходит тот, который был доступен на Старой Земле. </div>
	</div>
</asp:Content>

