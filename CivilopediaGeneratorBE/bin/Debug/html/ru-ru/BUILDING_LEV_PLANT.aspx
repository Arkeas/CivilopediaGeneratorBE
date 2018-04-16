<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Левитационный завод</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Левитационный завод</div>
	<img src="/civilopediabe/images/large/BUILDING_LEV_PLANT.png" alt="Левитационный завод" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">390 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>Производство:</h2><div class="infobox">+4 <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('Антигравий');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_MECHATRONICS.aspx" onmouseover="return tooltip('Мехатроника');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_MECHATRONICS.png" /></a></div>
		
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_purity_affinity">уровень 5 <img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>История</h2><div class="infobox">Как только стало очевидно, что антигравий можно с успехом использовать для создания магнитно-левитационных двигателей, началась "антигравиевая лихорадка". Множество геологоразведчиков, среди которых были как частные старатели, так и нанятые колонией исследователи, поспешили к месторождениям, чтобы первыми занять богатейшие источники ресурсов. Поскольку на расположение монополярных магнитных "залежей" в определенной степени влияли ветровые течения и магнитные аномалии, конкуренция была жесткой. Закрепив за собой участок и подготовив его к разработке, старатели часто обнаруживали, что неподалеку построен левитационный завод по производству магнитно-левитационных двигателей. Вне зависимости от того, какие двигатели выпускал этот завод - небольшие для личного транспорта или массивные, предназначенные для строительства или военного оборудования, - принцип всегда оставался тем же: механически обработанный монополярный антигравий "возбуждался" электромагнитным полем, и в результате возникало магнитное отталкивание такой силы, которой невозможно было бы достичь с помощью биполярного магнита. Процесс сопровождался значительным выделением тепла, поэтому двигатель приходилось охлаждать жидким азотом. На левитационных заводах применялись новейшие достижения в области автоматизированной сборки и роботизированных конвейеров, квантового программирования и кибернетических методов расчета скорости резания и подачи деталей. Большинство таких заводов работает в соответствии с теорией производства "Сигма-6", разработанной в 80-е годы XX века на Старой Земле. Эта теория сводит к минимуму вариативность за счет выполнения определенной последовательности проверок качества с количественным целевым показателем - минимальное среднее число дефектных деталей, допускаемое стандартами колоний, составляет 2,6 на 1 млн единиц. Благодаря переходу на "Сигма-6" аэромобили стали самым распространенным и надежным средством передвижения в большинстве колоний.</div>
	</div>
</asp:Content>

