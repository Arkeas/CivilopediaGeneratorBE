<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Ферма</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Ферма</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FARM.png" alt="Ферма" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Производительность:</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> пищи</div>
		
		
		
		
		<h2>Место постройки:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('лугов');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('Равнина');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('Пустыня');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Для людей, столкнувшихся с незнакомыми условиями новой планеты, главной надеждой на выживание стало сельское хозяйство, так как оно производит гарантированно безопасные и съедобные товары. Фермы можно строить на равнинах, лугах и в пустынях; они повышают уровень пищи, которую производит город. </div>
	</div>
</asp:Content>

