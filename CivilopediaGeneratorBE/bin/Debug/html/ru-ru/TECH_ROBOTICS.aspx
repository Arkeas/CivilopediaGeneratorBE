<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Роботехника</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Роботехника</div>
	<img src="/civilopediabe/images/large/TECH_ROBOTICS.png" alt="Роботехника" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">380 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>Открывает юниты:</h2><div class="infobox"><a href="UNIT_AIR_FIGHTER.aspx" onmouseover="return tooltip('Тактический истребитель');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_AIR_FIGHTER.png" /></a></div>
		<h2>Открывает здания:</h2><div class="infobox"><a href="BUILDING_AUTOPLANT.aspx" onmouseover="return tooltip('Автоматизированный завод');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_AUTOPLANT.png" /></a></div>
        
		
		<h2>Открывает действия:</h2><div class="infobox"><a href="IMPROVEMENT_FIRAXITE_MINE.aspx" onmouseover="return tooltip('Построить фиракситовую шахту');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_FIRAXITE_MINE.png" /></a><a href="IMPROVEMENT_MANUFACTORY.aspx" onmouseover="return tooltip('Построить фабрику');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_MANUFACTORY.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Позволяет построить <span class="color_highlight_building">автоматизированный завод</span> и создать <span class="color_highlight_unit">тактический истребитель</span>. Позволяет рабочим строить <span class="color_highlight_improvement">фиракситовые шахты</span> и <span class="color_highlight_improvement">фабрики</span>.</div>
		
		<h2>Цитата:</h2><div class="infobox">"Роботы не жалуются, не сомневаются и не отдыхают - многим стоит брать с них пример".<br />- Вадим Козлов, "Аксиомы из протоколов Центрального Совета"</div>
		<h2>История</h2><div class="infobox">При освоении солнечной системы человечество активно использовало роботов, поэтому в сфере робототехники к моменту Планетаризации люди достигли значительного прогресса. Серьезные продвижения в компьютерной науке, а также в области машиностроения и электронной инженерии дали большой толчок дальнейшим интенсивным исследованиям в сфере робототехники. Необходимость стремительного развития этой сферы определялась также потребностями некогда многочисленной человеческой расы, вынужденной бороться за жизнь на новой планете. Полуавтономные сельскохозяйственные роботы, роботы для горнодобывающей промышленности, производственные роботы и антропоморфные роботы с искусственным интеллектом получили столь широкое распространение в колониях, что им перестали вести счет. В своих исследованиях ученые стремились сделать роботов выносливее и крепче, желая повысить их пригодность для выполнения чрезвычайно опасных задач. В настоящее время происходит внедрение антропоморфных роботов в отраслях, требующих выполнения множества трудоемких операций (например, в сфере ухода за детьми и оказания основных медицинских услуг).</div>
	</div>
</asp:Content>

