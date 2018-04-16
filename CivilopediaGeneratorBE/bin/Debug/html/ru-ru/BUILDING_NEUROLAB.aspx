<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Нейролаборатория</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Нейролаборатория</div>
	<img src="/civilopediabe/images/large/BUILDING_NEUROLAB.png" alt="Нейролаборатория" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">255 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		<h2>Наука:</h2><div class="infobox">+10% <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_COGNITION.aspx" onmouseover="return tooltip('Познание');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_COGNITION.png" /></a></div>
		
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_supremacy_affinity">уровень 4 <img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">+1 к <img src="/civilopediabe/images/research.png" alt="science" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> {5_ObjectDesc[2]}</div>
		
		<h2>История</h2><div class="infobox">Нейролаборатории позволяют ученым установить мозговые интерфейсы, освобождая их в процессе исследований от скучной и трудоемкой работы. Прямой интерфейс "мозг-компьютер" позволяет ученому вести междисциплинарные исследования и строить инновационные теории, подключившись к сети. Обычно такие сети поддерживаются квантовым суперкомпьютером и оснащены современнейшим коммуникационным оборудованием, имеющим доступ к сетям передачи данных всей планеты. Внутренние нейронные сети нейролабораторий способны на глубокое упреждение и оснащены подпрограммами, умеющими распознавать паттерны, обучаться по прецедентам и изучать непараметрическую статистику. Таким образом, нейролаборатории фильтруют данные предыдущих исследований, делают прогнозы временных рядов, самостоятельно анализируют потенциальное практическое применение исследований и даже предлагают новые его сферы. В некоторых нейролабораториях интерфейс "мозг-компьютер" вживляется без использования инвазивных средств. Обычно для этого применяют магнитоэнцефалографию или функциональный магнитный резонанс. Тем не менее, подобные интерфейсы работают не так эффективно, как инвазивные (например, корковые имплантаты и нейрочипы), которые могут быть установлены в нейролабораториях роботами-хирургами. Большинство нейролабораторий были основаны высшими учебными заведениями и научно-исследовательскими фондами, хотя некоторые появились благодаря инвестициям корпораций и колоний. Каждая новая лаборатория увеличивает количество исследований, проводимых на планете, в геометрической прогрессии, и многие из последних научных открытий были сделаны именно в нейролабораториях.</div>
	</div>
</asp:Content>

