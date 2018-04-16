<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Ксенотопливный завод</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Ксенотопливный завод</div>
	<img src="/civilopediabe/images/large/BUILDING_XENOFUEL_PLANT.png" alt="Ксенотопливный завод" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">190 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>Энергия:</h2><div class="infobox">+3 <img src="/civilopediabe/images/energy.png" alt="energy" /> </div>
		
		
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_ALIEN_SCIENCES.aspx" onmouseover="return tooltip('Наука инопланетян');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ALIEN_SCIENCES.png" /></a></div>
		
		<h2>Специалисты:</h2><div class="infobox"><a href="CONCEPT_BUILDINGS_SPECIALISTS.aspx" onmouseover="return tooltip('Торговец');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/SPECIALIST_TRADER.png" /></a><a href="CONCEPT_BUILDINGS_SPECIALISTS.aspx" onmouseover="return tooltip('Торговец');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/SPECIALIST_TRADER.png" /></a></div>
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_harmony_affinity">уровень 2 <img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">+1 к <img src="/civilopediabe/images/energy.png" alt="energy" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/xenomass.png" alt="xenomass" /> {5_ObjectDesc[2]}</div>
		
		<h2>История</h2><div class="infobox">Ксенонауки нашли множество применений местной фауне, но самым важным открытием, вероятно, стало ксенотопливо, сделанное из вездесущей ксеномассы. В ксеномассе содержится большое количество связанного углерода, и ее можно преобразовать в ксенотопливо с помощью тепловых, химических и/или биохимических процессов на колониальных нефтеперерабатывающих заводах. Большинство таких методов были разработаны на Старой Земле, но культурное и экономическое истощение привело к тому, что до Великой Ошибки построили совсем немного биотопливных заводов, а потом экологическая катастрофа подстегнула исследование более эффективных процессов. Например, на одном из первых ксенотопливных заводов ксеноэтанол производился с помощью ферментации углеводов, найденных в местной фауне. В настоящее время наиболее распространенное и наименее дорогое ксенотопливо - это ксенодизель, производимый из ксеномассы с помощью переэтерификации. По последним данным, на планете произведено 205 млрд литров ксенодизеля. В последнее время исследователями были разработаны методы создания целлюлозного этанола из лигноцеллюлозы, найденной во многих травах этой планеты, а инженеры занимаются проектированием электростанций для получения электричества из этанола. Производство ксенотоплива жизненно важно для успеха колоний, поэтому в большинстве поселений имеются ксенотопливные заводы, большие или маленькие, работающие почти на полную мощность. Хотя некоторые колониальные ученые выразили обеспокоенность изменениями в землепользовании из-за выбросов ксенотопливных заводов, до сегодняшнего дня власти колоний игнорировали этот вопрос.</div>
	</div>
</asp:Content>

