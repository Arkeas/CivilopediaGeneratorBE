<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Бронированная пехота</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Бронированная пехота</div>
	<img src="/civilopediabe/images/large/UNIT_BATTLESUIT.png" alt="Бронированная пехота" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">160 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Бой:</h2><div class="infobox">24 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>Передвижение:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Титан');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_SERVOMACHINERY.aspx" onmouseover="return tooltip('сервомашин');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_SERVOMACHINERY.png" /></a></div>
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_purity_affinity">уровень 4 <img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox"><span class="color_purity_affinity">Уникальный юнит <img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> Праведности</span>. Солдаты, закованные в модифицированную броню. Отлично защищенные штурмовые войска.</div>
		
		<h2>История</h2><div class="infobox">Повышение качества отдельных солдат всегда было и остается главной целью военных наук. Тело человека является отличной боевой платформой: оно обладает хорошей несущей способностью и маневренностью на пересеченной местности, надежным сенсорным пакетом, а также может быть улучшено путем обучения принятию решений и тактическим рефлексам. Боевая экипировка усиливает потенциал каждого солдата по всем направлениям.<br /><br />Бронированная пехота - наследница ранних экспериментов с промышленными экзоскелетами. Ранние модели увеличили нагрузку на оператора, ими пользующегося, но зато ему не нужно было носить с собой громоздкие и недолговечные источники питания. Открытие антигравия и его идиосинкратических монополярных гравитационных полей показало, что экзоскелеты можно строить и приводить в движение при помощи легких термоядерных реакторов нового поколения. Получение источника энергии устранило последнее препятствие к эффективной силовой броне для военных, и боевая экипировка быстро вошла в серийное производство. Количество боеприпасов у солдата теперь измерялось тоннами, его мобильность практически удвоилась, и все это требовало лишь минимального дополнительного обучения.<br /><br />Боевая экипировка отталкивается от фундаментальных преимуществ человека. Без солдата это всего лишь мертвая конструкция. Она определила новый стандарт пехотинца, изменила стратегические традиции столь же радикально, как и пулемет в свое время.<br /><br />Боевая экипировка пехотных полков традиционно носит имя командира полка, а прозвища самых доблестных, легендарных командиров сохраняются и после их смерти или отставки. Возможно, самый известный такой отряд - это ярко разрисованные "Ягуары" полковника Хуанито. Ричард Хуанито погиб в бою около восьмидесяти лет назад, но полк вспоминает его имя каждое утро во время переклички. Старший сержант говорит о давно умершем офицере так: "Он пошел впереди нас".</div>
	</div>
</asp:Content>

