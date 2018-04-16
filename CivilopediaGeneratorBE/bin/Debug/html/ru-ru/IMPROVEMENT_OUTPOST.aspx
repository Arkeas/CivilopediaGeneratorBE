<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Аванпост</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Аванпост</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_OUTPOST.png" alt="Аванпост" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Производительность:</h2><div class="infobox">нет</div>
		
		
		
		
		<h2>Место постройки:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('лугов');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('Равнина');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('Пустыня');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('Тундра');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('Снег');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Аванпост, вкратце, это прото-город: небольшое поселение на карте, которое занимает столько же территории, сколько город, но еще не обладает преимуществами города. На аванпостах нельзя строить здания и чудеса, создавать юниты, возводить оборонительные сооружения. Владелец аванпоста получает эксклюзивное право улучшать клетки на его территории и собирать продукцию с этих клеток, однако вражеские юниты могут беспрепятственно проходить по территории аванпоста.<br /><br />Аванпосты не могут обстреливать вражеские войска издалека, их боевая мощь ослаблена, и при захвате они уничтожаются, а не аннексируются. Но в них можно держать войска, и юниты в гарнизоне будут воевать как обычно.<br /><br />Единственным исключением из правила развития аванпостов в города является столица игрока - первый построенный им в самом начале игры город. Столица считается полностью готовой уже при своем основании, но все последующие заложенные поселения будут проходить через стадию аванпостов.</div>
	</div>
</asp:Content>

