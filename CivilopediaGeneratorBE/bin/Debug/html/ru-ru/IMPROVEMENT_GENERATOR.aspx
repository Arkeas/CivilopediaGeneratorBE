<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Генератор</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Генератор</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_GENERATOR.png" alt="Генератор" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Производительность:</h2><div class="infobox">2</span> <img src="/civilopediabe/images/energy.png" alt="energy" /> ед. энергии</div>
		
		
		
		
		<h2>Место постройки:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('лугов');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('Равнина');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('Пустыня');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('Тундра');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('Снег');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Генераторы - примитивные устройства, преобразующие механическую энергию в электричество. Выживание колонии на новой планете зависит от способности ее жителей создавать новые товары. Поэтому энергия заменила деньги в качестве стандарта, которым измеряется богатство. Дополнительным преимуществом генераторов является их простота, что позволяет новым колониям с легкостью обеспечить себя надежным источником энергии.</div>
	</div>
</asp:Content>

