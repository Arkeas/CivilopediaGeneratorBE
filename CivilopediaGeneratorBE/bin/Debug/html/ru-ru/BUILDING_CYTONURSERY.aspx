<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Клеточный инкубатор</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Клеточный инкубатор</div>
	<img src="/civilopediabe/images/large/BUILDING_CYTONURSERY.png" alt="Клеточный инкубатор" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">90 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>Здоровье:</h2><div class="infobox">+1 <img src="/civilopediabe/images/health.png" alt="health" /></div>
		
		
		
		<h2>Наука:</h2><div class="infobox">+1 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_GENETICS.aspx" onmouseover="return tooltip('Генетика');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_GENETICS.png" /></a></div>
		
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">+1 <img src="/civilopediabe/images/food.png" alt="food" /> Пища от {@3_ObjectName[2]}</div>
		
		<h2>История</h2><div class="infobox">Чтобы расти и процветать, поселениям требовалось культивировать растения со Старой Земли. Вместо того чтобы полагаться на семена или споры, первые садоводческие инкубаторы после Планетаризации использовали клетки, сохранившиеся во время межзвездного перелета (грузовое пространство тогда стоило дорого). Эти клеточные инкубаторы позволили засадить первые фермы и фруктовые сады после того, как была подготовлена почва. Позже в клеточных инкубаторах выращивали местные и трансгенные гибриды. Они использовались для научно-исследовательских целей (с их помощью колониальные ученые пытались понять чужую экосистему), а также чтобы пополнить запас продуктов питания и волокнистых культур, привезенных со Старой Земли. Существует несколько методов размножения в инкубаторе, но простейшим является воспроизведение полностью сформированных клонов из вещества клеточного растения. Химические и органические катализаторы (обычно на основе ферментов) ускоряют деление клеток до тех пор, пока количество цитоплазмы и органелл не достигнет критического значения (фаза G1), после чего начинается автоматическая репликация генетического материала (фаза G2). Получив таким образом определенное количество растений, ученые пересаживают их в стандартный инкубатор или под открытое небо, где может происходить нормальное размножение. Несмотря на то, что впоследствии другие предприятия в значительной степени вытеснили инкубаторы, множество из тех, что поменьше, продолжили работать и вносить свой вклад в жизнь общества.</div>
	</div>
</asp:Content>

