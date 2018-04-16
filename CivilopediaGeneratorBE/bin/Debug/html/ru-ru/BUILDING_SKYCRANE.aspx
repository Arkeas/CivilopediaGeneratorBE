<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Воздушный кран</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Воздушный кран</div>
	<img src="/civilopediabe/images/large/BUILDING_SKYCRANE.png" alt="Воздушный кран" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">470 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>Производство:</h2><div class="infobox">+15% <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('Антигравий');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_ASTRODYNAMICS.aspx" onmouseover="return tooltip('Астродинамика');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ASTRODYNAMICS.png" /></a></div>
		
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_purity_affinity">уровень 10 <img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>История</h2><div class="infobox">Магнитно-левитационные двигатели имеют широкую сферу применения, в том числе и в строительстве. На протяжении нескольких тысячелетий люди использовали краны для подъема и перемещения тяжелых грузов. Вполне естественно, что вскоре после изобретения магнитно-левитационных двигателей незамедлительно были созданы краны для работы над поверхностью земли, на наземных или низкоорбитальных объектах. Благодаря природе магнитной левитации и тому, что сумма всех моментов у основания близка к нулю, небесные краны были очень устойчивы, и их подъемная нагрузка превышала обычную 85-процентную нагрузку на конец стрелы наземных кранов. Колониальные небесные краны, как правило, подразделялись на два типа: одноблочные (или мостовые), у которых крюковый механизм располагался под платформой, и краны с боковым захватом, у которых стрела с одной стороны выходила за пределы платформы. В крупнейших кранах сочетались обе этих системы, а в некоторые такие краны дополнительно встраивались балочные системы Бесселя. Одной из основных проблем наземных кранов является поддержание равновесия. В конструкции небесных кранов эта проблема устраняется путем установки нескольких магнитно-левитационных двигателей. На низкоорбитальных строительных объектах небесные краны ударопрочной конфигурации с гидравлической стрелой используются в качестве стандартного оборудования для перемещения и установки больших блоков. Для небесных кранов на низкой орбите нагрузка не является проблемой, а вот инерция вызывает сложности… Поэтому на многих небесных кранах, предназначенных специально для орбитального строительства, устанавливаются различные типы гасителей инерции.</div>
	</div>
</asp:Content>

