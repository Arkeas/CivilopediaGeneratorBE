<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Плантация</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Плантация</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PLANTATION.png" alt="Плантация" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Производительность:</h2><div class="infobox">+1 к <img src="/civilopediabe/images/production.png" alt="production" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/fiber.png" alt="fiber" /> {5_ObjectDesc[2]}<br />+1 к <img src="/civilopediabe/images/food.png" alt="food" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/fruit.png" alt="fruit" /> {5_ObjectDesc[2]}<br />+1 к <img src="/civilopediabe/images/food.png" alt="food" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/fungus.png" alt="fungus" /> {5_ObjectDesc[2]}<br />+2 к <img src="/civilopediabe/images/food.png" alt="food" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/tubers.png" alt="tubers" /> {5_ObjectDesc[2]}</div>
		
		
		<h2>Улучшение ресурсов:</h2><div class="infobox"><a href="RESOURCE_FIBER.aspx" onmouseover="return tooltip('Волокно');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIBER.png" /></a><a href="RESOURCE_FUNGUS.aspx" onmouseover="return tooltip('грибов');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FUNGUS.png" /></a><a href="RESOURCE_FRUIT.aspx" onmouseover="return tooltip('фруктов');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FRUIT.png" /></a><a href="RESOURCE_TUBERS.aspx" onmouseover="return tooltip('клубней');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TUBERS.png" /></a></div>
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">На новой планете плантации из больших, открытых поместий превратились в закрытые биоструктуры-теплицы, производящие сельскохозяйственные культуры в промышленных масштабах. Это радикальное изменение позволило стереть из памяти воспоминания о плантациях старой Земли, на которых трудились рабы - и привело к увеличению популярности сельскохозяйственных профессий.</div>
	</div>
</asp:Content>

