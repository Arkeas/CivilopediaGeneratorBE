<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: БРШР</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">БРШР</div>
	<img src="/civilopediabe/images/large/UNIT_CARVR.png" alt="БРШР" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">220 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Бой:</h2><div class="infobox">38 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>Передвижение:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('Фираксит');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_AUTOGYROS.aspx" onmouseover="return tooltip('Гироплан');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_AUTOGYROS.png" /></a></div>
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_supremacy_affinity">уровень 7 <img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox"><span class="color_supremacy_affinity">Уникальный юнит <img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> Превосходства</span>. Современные, полностью автономные боевые роботы, прекрасно приспособленные для разведки и ближнего боя.</div>
		
		<h2>История</h2><div class="infobox">Система КНОР продемонстрировала боеспособность сети боевых единиц, управляемых ИИ, но она имела ограничения: требовался удаленный ИИ для управления, а работала система только в хорошо изученных боевых пространствах. Будучи идеальной для оборонительных операций, она по-прежнему оставляла ценных людей незащищенными в наступательных операциях.<br /><br />Чтобы избавиться от этих недостатков, были созданы боевые и разведывательные шагающие роботы (БРШР). Юниты БРШР имели более крупные и мощные узлы управления, эффективно объединяющиеся в сети, когда юниты действовали в непосредственной близости друг от друга. Совместное использование данных и картирования боевого пространства, разработанные для КНОР, могли быть адаптированы для этой новой наступательной оперативной единицы. Кроме того, БРШР полезны командирам-людям: каждая наземная боевая единица - это одновременно ценный источник разведданных и боевой юнит, которому можно дать приказ.<br /><br />Гибкие, автономные, опасные и тесно связанные с другими аналогичными юнитами, БРШР представляют собой воплощение основных идей пути Превосходства, приложенных к одной из самых рискованных сфер деятельности.</div>
	</div>
</asp:Content>

