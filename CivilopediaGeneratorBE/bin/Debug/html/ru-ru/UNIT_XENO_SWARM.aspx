<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Ксенорой</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Ксенорой</div>
	<img src="/civilopediabe/images/large/UNIT_XENO_SWARM.png" alt="Ксенорой" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">120 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Бой:</h2><div class="infobox">22 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>Передвижение:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_XENOMASS.aspx" onmouseover="return tooltip('Ксеномасса');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_XENOMASS.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_ALIEN_ADAPTATION.aspx" onmouseover="return tooltip('Адаптация инопланетян');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ALIEN_ADAPTATION.png" /></a></div>
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_harmony_affinity">уровень 4 <img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox"><span class="color_harmony_affinity">Уникальный юнит <img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> Гармонии</span>. Смешанный отряд, состоящий из людей и инопланетных животных. Простой и многофункциональный штурмовой юнит ближнего боя.</div>
		
		<h2>История</h2><div class="infobox">Первые встречи колонистов с волкожуками произвели на военных ученых неизгладимое впечатление. Человечество впервые встретило рой особей, чьи солдаты не уступали солдатам-людям. Исследования роев также показали, что эти солдаты были относительно недороги в производстве (и с точки зрения издержек, и с точки зрения требующихся ресурсов). Перспектива завести воинскую часть, состоящую из недорогих, контролируемых людьми-пастухами воинских роев была слишком привлекательной, чтобы пройти мимо.<br /><br />Ксенорой доказал, что его создателям есть чем гордиться: даже не разобравшись до конца в свойствах ксеномассы, инопланетной биохимии и морфологии, люди все равно сумели превратить ксеносуществ в оружие. Рукотворные феромонные рецепторы позволяли привязать каждый рой к одному человеку, руководящего его атаками. Сперва офицеров, командующих ксенороями, призывали из военного медицинского персонала, имевшего необходимое биологическое образование (это позволяло им понимать волкожуков и свою с ними связь). Вскоре выяснилось, что долгое проживание с роем может влиять на пастуха, и тестирование на звание командующего ксенороем стало строгим и многосторонним. Кандидатов то раздражали, то смешили; одна популярная шутка гласит, что те, кто проводил эксперименты, искали вид человекоподобных инопланетян, которым удалось внедриться в нашу популяцию.<br /><br />На поле боя ксенорои приумножали боевую силу. Если командующего роем убивали снайперы или дроны, их подопечные впадали в неконтролируемое буйство (при этом они ускорялись, и их было труднее убить). Восполнить потерю отдельного жука нетрудно; требовалось менее двух недель, чтобы вырастить нового полностью развитого солдата. Командующие роями стали национальными героями - одинокие солдаты, сражающиеся на линии фронта, прибывающие на поле боя верхом на мощных быстролапых существах, чтобы преломить ход сражения. В свете успеха ксенороев и популярности их командующих мало кто обращал внимание на исходящий от них запах крови.</div>
	</div>
</asp:Content>

