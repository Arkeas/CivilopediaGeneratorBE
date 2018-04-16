<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Среда обитания</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Среда обитания</div>
	<img src="/civilopediabe/images/large/TECH_HABITATION.png" alt="Среда обитания" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">50 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>Открывает юниты:</h2><div class="infobox"><a href="UNIT_WORKER.aspx" onmouseover="return tooltip('Рабочий');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_WORKER.png" /></a><a href="UNIT_EXPLORER.aspx" onmouseover="return tooltip('Исследователь');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_EXPLORER.png" /></a><a href="UNIT_MARINE.aspx" onmouseover="return tooltip('Солдат');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_MARINE.png" /></a></div>
		<h2>Открывает здания:</h2><div class="infobox"><a href="BUILDING_RELIC.aspx" onmouseover="return tooltip('Реликвия Старой Земли');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RELIC.png" /></a><a href="BUILDING_CLINIC.aspx" onmouseover="return tooltip('Клиника');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_CLINIC.png" /></a></div>
        
		
		
		
	</div>	
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Позволяет построить <span class="color_highlight_building">клинику</span> и <span class="color_highlight_building">Реликвию Старой Земли</span>, а также создавать <span class="color_highlight_unit">рабочих</span>, <span class="color_highlight_unit">исследователей</span> и <span class="color_highlight_unit">солдат</span>.</div>
		<h2>Особые возможности:</h2><div class="infobox">Позволяет строить мосты через реки.<br /></div>
		<h2>Цитата:</h2><div class="infobox">"Раньше мы думали, что нашей судьбой управляют боги. Познавая природу, мы поняли, что это не так. Теперь мы сами хозяева своей жизни, и хочется верить, что так будет всегда".<br />- Неизвестный автор</div>
		<h2>История</h2><div class="infobox">Наряду с пищей и водой, базовой потребностью человека является наличие жилища. К XXI веку человечество перешло от строительства глинобитных хижин, замков с толстыми стенами и бетонных небоскребов к сборным конструкциям, которые возводились автоматически. Эти конструкции, разработанные для решения проблемы нехватки жилья во время переселения в другие районы из-за повышения уровня моря, были адаптированы для использования компаниями во время расселения по планете. Конечно, поселение на новой планете было для колонистов больше, чем просто местом проживания: в нем строились склады, культурные центры, административные здания и т. д. Обычно они возводились сразу после строительства сборных жилых домов.</div>
	</div>
</asp:Content>

