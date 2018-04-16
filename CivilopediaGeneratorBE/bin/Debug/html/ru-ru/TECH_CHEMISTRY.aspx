<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Химия</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Химия</div>
	<img src="/civilopediabe/images/large/TECH_CHEMISTRY.png" alt="Химия" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>Открывает здания:</h2><div class="infobox"><a href="BUILDING_LABORATORY.aspx" onmouseover="return tooltip('Лаборатория');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_LABORATORY.png" /></a><a href="BUILDING_RECYCLER.aspx" onmouseover="return tooltip('Перерабатывающий комплекс');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RECYCLER.png" /></a></div>
        
		<h2>Открывает ресурсы:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Нефть');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>Открывает действия:</h2><div class="infobox"><a href="IMPROVEMENT_PETROL_WELL.aspx" onmouseover="return tooltip('Пробурить нефтяную скважину');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PETROL_WELL.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Позволяет построить <span class="color_highlight_building">лабораторию</span> и <span class="color_highlight_building">перерабатывающий комплекс</span>. Позволяет рабочим бурить <span class="color_highlight_improvement">нефтяную скважину</span>. Открывает на карте месторождения <span class"color_highlight_resource">нефти</span>.</div>
		
		<h2>Цитата:</h2><div class="infobox">"Мир возрастом четыре миллиарда лет и сплошь состоящий из полезных ресурсов, на которые претендует всего горстка людей. Тут есть, чем поживиться!"<br />- Хутама, "Все мы обречены на процветание"</div>
		<h2>История</h2><div class="infobox">С древних времен, когда Бэкон, Бойль, Гук и Мейоу начали превращать алхимию в научную дисциплину, упорядочив изучение элементов, химия была одной из самых важных областей исследований. После того как законы химии были приведены в систему и природа науки изучена, химия заняла важнейшее место в промышленном и научном прогрессе. Когда человечество освоило космическое пространство, появились новые научные дисциплины, такие как астрохимия, супермолекулярная химия и химия металлоорганических соединений. Новые планеты стали источниками новых открытий. Обнаружение таких веществ, как фираксит и антигравий, привело к развитию химии в самых неожиданных направлениях. Можно с уверенностью сказать, что химия является самой важной из прикладных наук для успешной колонизации космоса людьми.</div>
	</div>
</asp:Content>

