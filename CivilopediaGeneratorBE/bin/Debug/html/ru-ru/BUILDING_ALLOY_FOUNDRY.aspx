<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Литейный завод</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Литейный завод</div>
	<img src="/civilopediabe/images/large/BUILDING_ALLOY_FOUNDRY.png" alt="Литейный завод" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">310 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>Производство:</h2><div class="infobox">+2 <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_FABRICATION.aspx" onmouseover="return tooltip('Массовое производство');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_FABRICATION.png" /></a></div>
		
		<h2>Специалисты:</h2><div class="infobox"><a href="CONCEPT_BUILDINGS_SPECIALISTS.aspx" onmouseover="return tooltip('Инженер');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/SPECIALIST_ENGINEER.png" /></a><a href="CONCEPT_BUILDINGS_SPECIALISTS.aspx" onmouseover="return tooltip('Инженер');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/SPECIALIST_ENGINEER.png" /></a></div>
		
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">+2 к <img src="/civilopediabe/images/production.png" alt="production" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/titanium.png" alt="titanium" /> {5_ObjectDesc[2]}</div>
		
		<h2>История</h2><div class="infobox">Открытие богатых месторождений редких или недавно найденных минералов на этой планете привело к открытию уникальных сплавов. Чтобы работать с ними, а также производить более привычные сплавы, в большинстве колоний построили литейные заводы. В двухкомпонентных сплавах за основу берется обычный цветной металл, а потом к нему прибавляются продукты обработки фиракситовой, осмиевой, рениевой и иттриевой руды. На планете производят и тройные сплавы - например, сплав никеля, титана и фираксита. Из него в колониях делаются почти все интеллектуальные энергосистемы. Как правило, в колониях отливают сплавы внедрения, а не сплавы замещения. Дело в том, что у обычных металлов, выступающих в качестве основы, атомы меньше, чем у добавочных. Иногда в производстве используют титан - привычный, но полезный металл: он помогает закалить сплав, повысив его устойчивость к разъеданию (особенно миазмами). В литейных заводах размещают индукционные и отражательные печи, тигли, дегазационные установки, станки для обрезки литников, чистовые станки, поэтому заводы дороги в содержании и опасны при эксплуатации. С другой стороны, процесс литья на колониальных заводах сейчас автоматизируется, а рабочих постепенно заменяют роботами. Это позволяет сэкономить и повысить безопасность, но человеческий надзор остается критически важным во многих литейных процессах, так как в сплавы регулярно попадают чужеродные смеси.</div>
	</div>
</asp:Content>

