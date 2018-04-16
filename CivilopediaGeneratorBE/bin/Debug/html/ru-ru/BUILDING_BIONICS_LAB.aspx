<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Бионическая лаборатория</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Бионическая лаборатория</div>
	<img src="/civilopediabe/images/large/BUILDING_BIONICS_LAB.png" alt="Бионическая лаборатория" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">265 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>Здоровье:</h2><div class="infobox">+20% <img src="/civilopediabe/images/health.png" alt="health" /></div>
		
		
		
		
		
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_BIONICS.aspx" onmouseover="return tooltip('Бионика');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_BIONICS.png" /></a></div>
		
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_purity_affinity">уровень 4 <img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">+1 к <img src="/civilopediabe/images/production.png" alt="production" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/resilin.png" alt="resilin" /> {5_ObjectDesc[2]}</div>
		
		<h2>История</h2><div class="infobox">Когда стало очевидным, что флора и фауна новой планеты уникальна и очень разнообразна, появилась необходимость в создании учреждений по изучению живых видов. Требовалось выяснить, какую пользу могут принести человечеству уникальные свойства местных форм жизни. Бионические лаборатории стоили чрезвычайно дорого, но часть поселений все же вложила деньги в их создание. Результатом этих инвестиций стало открытие адаптивного резилина, холестерического жидкого кристалла, нейроморфных чипов, кремниевой сетчатки и десятков других новых технологий, имеющих сотни применений. Увидев очевидные преимущества инвестирования в бионические лаборатории, другие колонии последовали примеру тех, кто вложил деньги сразу. Благодаря лабораториям не только повысились обороноспособность и уровень развития колоний, но и появились новые науки: биомехатроника, биофизика, биогеология, биомиметрический синтез и многие другие. В последнее время специалисты бионических лабораторий уделяют пристальное внимание исследованию вычислительной техники. Были созданы искусственные нейроны, искусственные нейронные системы, а также спроектированы сети с использованием "роевого" метода. Другое направление бионики занимается разработкой так называемой сети Internalnet - интерфейса "мозг-компьютер", способного связать нанохондрии, бионические имплантаты и разум. Это шаг на пути к созданию настоящего кибернетического организма, что будет являться, по мнению некоторых ученых, новой ступенью человеческой эволюции. Несмотря на то что одни ученые считают бионическую лабораторию современной версией мастерской доктора Франкенштейна, другие возлагают на нее все надежды человечества.</div>
	</div>
</asp:Content>

