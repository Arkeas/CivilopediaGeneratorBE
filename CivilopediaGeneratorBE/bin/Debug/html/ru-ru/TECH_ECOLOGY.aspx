<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Экология</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Экология</div>
	<img src="/civilopediabe/images/large/TECH_ECOLOGY.png" alt="Экология" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>Открывает здания:</h2><div class="infobox"><a href="BUILDING_VIVARIUM.aspx" onmouseover="return tooltip('Ботанический сад');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_VIVARIUM.png" /></a><a href="BUILDING_ULTRASONIC_FENCE.aspx" onmouseover="return tooltip('Ультразвуковой барьер');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_ULTRASONIC_FENCE.png" /></a></div>
        
		
		<h2>Открывает действия:</h2><div class="infobox"><a href="CONCEPT_WORKERS_CLEARINGLAND.aspx" onmouseover="return tooltip('Убрать миазму');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAFORM_CLEAR_MIASMA.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Позволяет построить <span class="color_highlight_building">ботанический сад</span> и <span class="color_highlight_building">ультразвуковой барьер</span>, а таже создать орбитальный юнит - <span class="color_highlight_unit">рассеиватель испарений</span>.</div>
		
		<h2>Цитата:</h2><div class="infobox">"Когда Койот узнал, что он единственный представитель своего вида на новой планете, его вой разнесся от ущелья и до дальних холмов."<br />- "Сказки дядюшки Клона"</div>
		<h2>История</h2><div class="infobox">Экология является наукой с междисциплинарной основой. Она зародилась в первом десятилетии далекого XVIII века н.э. и строилась на работах ученых различных научных дисциплин: Александра фон Гумбольдта, Джеймса Геттона и Жана Батиста Ламарка. К середине первого десятилетия XX века на Земле начало расти беспокойство, связанное с неконтролируемым ростом населения, ограниченными природными ресурсами, изменением климата и исчезновением дикой природы. Это беспокойство широко распространилось среди правящих кругов и простого населения Земли и привело к развитию этой непопулярной ранее науки. Последствия катастрофы, получившей название "Великая Ошибка", превратили экологию в одну из самых значимых прикладных наук. Экологи входили в состав многих колониальных экспедиций, так как проводимые ими исследования должны были позволить избежать на новой планете возникновения проблем, разрушивших экосистему Земли.</div>
	</div>
</asp:Content>

