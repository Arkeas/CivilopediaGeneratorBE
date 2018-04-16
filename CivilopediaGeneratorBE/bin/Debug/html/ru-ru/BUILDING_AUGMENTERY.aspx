<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Медлаборатория</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Медлаборатория</div>
	<img src="/civilopediabe/images/large/BUILDING_AUGMENTERY.png" alt="Медлаборатория" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">500 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		<h2>Культура:</h2><div class="infobox">+1 <img src="/civilopediabe/images/culture.png" alt="culture" /> </div>
		<h2>Пища:</h2><div class="infobox">+1 <img src="/civilopediabe/images/food.png" alt="food" /> </div>
		<h2>Энергия:</h2><div class="infobox">+1 <img src="/civilopediabe/images/energy.png" alt="energy" /> </div>
		<h2>Наука:</h2><div class="infobox">+1 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		<h2>Производство:</h2><div class="infobox">+1 <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_AUGMENTATION.aspx" onmouseover="return tooltip('Аугментация');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_AUGMENTATION.png" /></a></div>
		
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_supremacy_affinity">уровень 7 <img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>История</h2><div class="infobox">Кибернетическое улучшение органа часто требует сложного хирургического вмешательства, приводящего к тому, что больной долго восстанавливается. Медлаборатории предназначены для пересадки, усовершенствования и оздоровления органов или кибернетических систем с минимальным временем восстановления индивида. Практически любую кибернетическую процедуру - от надстройки префронтальной коры головного мозга до улучшения конечностей - можно провести в амбулаторных условиях с выпиской в тот же день.<br /><br />Многие медлаборатории (например, сеть Tech'n'Out) полностью управляются компьютерами, но в лучших рядом с роботами-хирургами работают люди. Пациенту аккуратно делается анестезия, его кладут на стол, после чего проводится операция с использованием лучших инструментов и методов микрохирургии. Через некоторое время пациент просыпается, выпивает традиционную кружку фруктового сока с печеньем и выписывается.</div>
	</div>
</asp:Content>

