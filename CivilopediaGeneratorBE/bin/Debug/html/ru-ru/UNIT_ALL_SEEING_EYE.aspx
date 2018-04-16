<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Всевидец</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Всевидец</div>
	<img src="/civilopediabe/images/large/UNIT_ALL_SEEING_EYE.png" alt="Всевидец" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">200 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>Орбитальный радиус:</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>Число ходов на орбите:</h2><div class="infobox">30 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Нефть');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Титан');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_DARK_NETWORKS.aspx" onmouseover="return tooltip('Теневая сеть');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_DARK_NETWORKS.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Орбитальный юнит. Удаляет всех тайных агентов и устраняет интриги из любого города в радиусе действия. Мешает действовать тайным агентам и препятствует увеличению интриги, пока находится на орбите.</div>
		
		<h2>История</h2><div class="infobox">"Всевидец" - неправильное название. Этот спутник использует ультрасовременные программы для наблюдения за жителями города с помощью аудио- и видеосредств, анализа тепловых сигнатур и других суперсекретных методов. Поэтому более уместным было бы называть его "Бог". С точки зрения этики применение Всевидца в лучшем случае сомнительно, однако это лучший инструмент в арсенале спецслужб. Если направить его на город, Всевидец не только снизит уровень интриги до нуля, но и не даст ему расти. Более того, после активации спутник автоматически обнаруживает всех вражеских шпионов и сообщает о них властям. В самых крупных городах планеты этот процесс занимает не более 17 секунд.</div>
	</div>
</asp:Content>

