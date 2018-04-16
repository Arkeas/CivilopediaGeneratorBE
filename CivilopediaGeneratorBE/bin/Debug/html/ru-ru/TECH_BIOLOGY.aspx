<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Биология</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Биология</div>
	<img src="/civilopediabe/images/large/TECH_BIOLOGY.png" alt="Биология" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">770 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>Открывает здания:</h2><div class="infobox"><a href="BUILDING_BIOFUEL_PLANT.aspx" onmouseover="return tooltip('Биотопливный завод');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_BIOFUEL_PLANT.png" /></a><a href="BUILDING_GROWLAB.aspx" onmouseover="return tooltip('Культивационная станция');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_GROWLAB.png" /></a></div>
        
		
		<h2>Открывает действия:</h2><div class="infobox"><a href="IMPROVEMENT_DOME.aspx" onmouseover="return tooltip('Построить купол');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_DOME.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Позволяет построить <span class="color_highlight_building">биотопливный завод</span> и <span class="color_highlight_building">культивационную станцию</span>. Позволяет рабочим строить <span class="color_highlight_improvement">купол</span>.</div>
		
		<h2>Цитата:</h2><div class="infobox">"В ваших венах течет металл, созданный в сердце давно умершей звезды. Так вселенная выражает любовь к жизни".<br />- Саматар Джама Барре, "Это не изгнание"</div>
		<h2>История</h2><div class="infobox">При освоении любой планеты, в особенности той, где жизнь очень отличается от привычной людям, исследования в области естественных наук являются критически важными для их выживания. Возможно, биология является одним из древнейших способов изучения окружающего нас мира. Вскоре после Планетаризации колонисты-биологи приступили к изучению местной флоры и фауны во всех ее областях, от эпигенетики до палеонтологии. Помимо огромного количества других задач, была предпринята попытка адаптировать земные формы жизни к новой экологии или, по крайней мере, разработать средства, с помощью которых привычные одомашненные виды растений и животных могли приносить пользу здоровью и жизни человека. Поэтому сейчас во многих поселениях построены парники, виварии, ботанические сады и специализированные лаборатории, интегрированные в городской пейзаж.</div>
	</div>
</asp:Content>

