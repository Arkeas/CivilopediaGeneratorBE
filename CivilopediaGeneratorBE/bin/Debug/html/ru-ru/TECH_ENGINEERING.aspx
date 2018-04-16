<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Инженерное дело</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Инженерное дело</div>
	<img src="/civilopediabe/images/large/TECH_ENGINEERING.png" alt="Инженерное дело" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>Открывает юниты:</h2><div class="infobox"><a href="UNIT_CAVALRY.aspx" onmouseover="return tooltip('Боевой планетоход');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_CAVALRY.png" /></a></div>
		<h2>Открывает здания:</h2><div class="infobox"><a href="BUILDING_THORIUM_REACTOR.aspx" onmouseover="return tooltip('Ториевый реактор');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_THORIUM_REACTOR.png" /></a><a href="BUILDING_REPAIR_FACILITY.aspx" onmouseover="return tooltip('Ремонтная мастерская');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_REPAIR_FACILITY.png" /></a></div>
        
		<h2>Открывает ресурсы:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Титан');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		
		
	</div>	
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Позволяет построить <span class="color_highlight_building">ториевый реактор</span> и <span class="color_highlight_building">ремонтную мастерскую</span>, а также создать юнит <span class="color_highlight_unit">боевой планетоход</span>. Открывает на карте месторождения <span class"color_highlight_resource">титана</span>.</div>
		
		<h2>Цитата:</h2><div class="infobox">"Не учите детей мечтать об игрушках и сладостях. Учите их мечтать об удобной инфраструктуре".<br />- Вадим Козлов, "Аксиомы из протоколов Центрального Совета"</div>
		<h2>История</h2><div class="infobox">Применение практических принципов к созданию конструкций, устройств, машин и систем является основой цивилизации. Развитие теоретических наук приводило к развитию их прикладных аспектов и, соответственно, становлению инженерного дела. Инженеры, специализирующиеся на отраслях механики, химии, электротехники и строительства, входили в состав всех экспедиций, отправлявшихся на поиск новой планеты для жизни. Вскоре после приземления инженеры обнаружили новые материалы и разработали уникальные методы, пригодные для использования на новой планете. Кроме того, они адаптировали традиционные методы, применявшиеся на Земле для очистки воды, добычи минералов, выработки энергии и производства других необходимых ресурсов, которые должны были помочь выжить людям в новых колониях. Инженерное дело было дополнено науками о макро- и микроэлементах (например, нанотехнологией, в рамках которой были спроектированы новые "наниты") и применялось при создании крупных проектов - таких, как чудеса света.</div>
	</div>
</asp:Content>

