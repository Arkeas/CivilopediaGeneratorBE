<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Выгон</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Выгон</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PADDOCK.png" alt="Выгон" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Производительность:</h2><div class="infobox">+1 к <img src="/civilopediabe/images/production.png" alt="production" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/chitin.png" alt="chitin" /> {5_ObjectDesc[2]}<br />+1 к <img src="/civilopediabe/images/research.png" alt="science" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/resilin.png" alt="resilin" /> {5_ObjectDesc[2]}</div>
		
		
		<h2>Улучшение ресурсов:</h2><div class="infobox"><a href="RESOURCE_RESILIN.aspx" onmouseover="return tooltip('Резилин');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_RESILIN.png" /></a><a href="RESOURCE_CHITIN.aspx" onmouseover="return tooltip('Хитин');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CHITIN.png" /></a></div>
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Выгон - гениальное изобретение, нечто среднее между охотничьим лагерем и пастбищем. Выгоны приобрели популярность в колониях, когда люди, занимающиеся традиционной охотой, стали нести слишком большие потери. Фактически, выгон - это структура, которая действует как пассивный инструмент охоты. Используя особенности среды, охотники заманивают в ловушки представителей местной фауны и добывают из пойманной дичи хитин и резилин.</div>
	</div>
</asp:Content>

