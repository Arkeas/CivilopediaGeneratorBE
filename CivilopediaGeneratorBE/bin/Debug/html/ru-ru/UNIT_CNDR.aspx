<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: КНОР</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">КНОР</div>
	<img src="/civilopediabe/images/large/UNIT_CNDR.png" alt="КНОР" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">155 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Бой:</h2><div class="infobox">24 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>Передвижение:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('Фираксит');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_TACTICAL_ROBOTICS.aspx" onmouseover="return tooltip('Боевая роботехника');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_TACTICAL_ROBOTICS.png" /></a></div>
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_supremacy_affinity">уровень 4 <img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox"><span class="color_supremacy_affinity">Уникальный юнит <img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> Превосходства</span>. Простой, но надежный робот-солдат ближнего боя. Предназначен для обороны.</div>
		
		<h2>История</h2><div class="infobox">Военная аксиома: на оборону требуется куда меньше вооруженных сил, чем на нападение. Защита лучше знает свою позицию в бою, а значит, может эффективнее использовать ресурсы. Действительно, при наличии минимального количества информации и времени подготовить эффективную оборону может даже простейший ИИ. А уж когда зона обороны хорошо изучена, а боевые юниты управляются сложным военным ИИ, оборона будет почти непробиваемой.<br /><br />Когнитивный нейроэлектронный оборонный реестр (КНОР) возник в качестве системы связанных боевых единиц и массивов управляющих ими ИИ. Полный дублирующихся систем и построенный со значительной  степенью модульности (например, узлы ИИ и часть мозга КНОР, отвечающая за кинестетику боевых единиц, использовали одни и те же черные ящики), КНОР был, прежде всего, оборонительным блоком, способным наблюдать, отчитываться, адаптироваться и противостоять военной угрозе. Так как родная территория может быть хорошо изучена, ИИ КНОР имеет возможность в свое удовольствие проектировать бои и моделировать входящие угрозы. Содержание КНОР в качестве резервной защитной силы означало быстрый ремонт и восстановление поврежденных боевых единиц. Но еще важнее тот факт, что его присутствие освобождает человеческие силы и дает им возможность заниматься агрессивными наступательными операциями, где человеческая изобретательность и тактическая гибкость все еще превосходят систему боевых дронов.<br /><br />Повсеместное распространение КНОР-аппаратов привело к тому, что они остались стандартом роботизированных приложений даже после того, как их перестали использовать. Если вы когда-нибудь задавались вопросом, почему у двуногих роботов второй категории только 34 канала для опорно-двигательной аппаратной связи, ответ прост: это пережиток, доставшийся им от старых боевых единиц КНОР.</div>
	</div>
</asp:Content>

