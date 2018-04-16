<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Эгида</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Эгида</div>
	<img src="/civilopediabe/images/large/UNIT_AEGIS.png" alt="Эгида" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">180 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Бой:</h2><div class="infobox">20 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		<h2>Дальний бой:</h2><div class="infobox">34 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>Радиус:</h2><div class="infobox">2 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		<h2>Передвижение:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Титан');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('Антигравий');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_SURROGACY.aspx" onmouseover="return tooltip('Суррогатность');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_SURROGACY.png" /></a></div>
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_purity_affinity">уровень 7 <img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox"><span class="color_purity_affinity">Уникальный юнит <img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> Праведности</span>. Легкий робот с множеством видов вооружения. Бронированная дальнобойная техника с различными средствами огневой поддержки.</div>
		
		<h2>История</h2><div class="infobox">Военные исследователи обнаружили интересный побочный эффект прямохождения (впервые его заметили в Виллюнском военном институте): солдаты сражаются эффективней в одном строю с двуногой единицей, чем с четвероногой. Существуют различные объяснения "эффекта Виллюна", но считается, что положительное воздействие на солдат-людей сполна возмещает издержки построения двуногой боевой единицы. Солдаты склонны считать этих юнитов благородными заменителями человечеству. Факторный анализ показывает, что образ таких юнитов является чем-то средним между "воинственными полубогами" и "старшими братьями с большой пушкой". Некоторые военные ученые развили эти исследования и дальше, что нагляднее всего видно на примере Эгиды.<br /><br />В отличие от многих боевых юнитов колоний, выбравших путь Праведности, Эгиды обладают боевым ИИ. Впрочем, он нужен лишь для поддержания осанки, координации движения, ремонта повреждений и перезарядки оружия: это позволяет пилоту-человеку сконцентрироваться на борьбе с врагом. По задумке ИИ может самостоятельно производить только основные движения (как правило, только входить и выходить из ремонтной платформы) и неспособен приводить в действие оружие. Пилоту же доступно множество систем вооружения, с помощью которых он и противостоит угрозам на поле боя. Величайшая тактическая ценность Эгиды заключается в том, что один пилот может сражаться с множеством противников одновременно, а может направить всю мощь Эгиды на одного врага. <br /><br />Эгида не пытается скрываться. Ее манера держаться и вооружения демонстрируют силу и друзьям, и врагам. Специально обученные пилоты Эгиды высоко ценятся однополчанами, потому что Эгида всегда готова привлечь вражеское внимание, а потом спасти своих товарищей, разбив врага. Мощь этих титанов поля боя неоспорима.</div>
	</div>
</asp:Content>

