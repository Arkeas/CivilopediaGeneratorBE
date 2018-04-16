<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Золото</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Золото</div>
	<img src="/civilopediabe/images/large/RESOURCE_GOLD.png" alt="Золото" class="contentimage" />
	<div class="contentleft">
		<h2>Производительность:</h2><div class="infobox">1 <img src="/civilopediabe/images/culture.png" alt="culture" /> культуры</div>
		
		<h2>Местоположение:</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('холмов');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('лугов');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('Равнина');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('Пустыня');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
		<h2>Улучшение:</h2><div class="infobox"><a href="IMPROVEMENT_MINE.aspx" onmouseover="return tooltip('Шахта');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_MINE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>История</h2><div class="infobox">Атомная масса 196,96; атомное число 79. Золото высоко ценится на Старой Земле из-за его редкости (менее 0,005 части на миллион), блеска, пластичности и устойчивости к любым условиям. Во многих странах перед Великой Ошибкой золото служило стандартом для национальной валюты, и долгое время оно обменивалось, сберегалось и было целью грабежа в человеческой цивилизации. На этой планете, тем не менее, золото довольно распространено в гидротермальных жилах и используется, за исключением личных ювелирных изделий, в первую очередь в промышленности и технологиях. Золото является электрическим проводником, и в то же время оно устойчиво к коррозии, что делает его идеальным для использования во влажной или соленой среде. Широко распространено его использование в компьютерах, средствах связи, полупроводниках, космических аппаратах, а также в большинстве типов двигателей. Золото имеет жизненно важное значение для эффективного функционирования современных боевых костюмов, бронетехники, военных кораблей и прочей военной техники. Добыча и переработка многочисленных самородков золота - это простой процесс, и даже золотоискатели из числа обычных граждан в состоянии освоить его. Вдали от родного дома отношения с этим благородным металлом остаются близкими.</div>
	</div>
</asp:Content>

