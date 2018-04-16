<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Метеорегулятор</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Метеорегулятор</div>
	<img src="/civilopediabe/images/large/UNIT_WEATHER_CONTROLLER.png" alt="Метеорегулятор" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">130 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>Орбитальный радиус:</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>Число ходов на орбите:</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Нефть');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Титан');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_CLIMATE_CONTROL.aspx" onmouseover="return tooltip('Контроль климата');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CLIMATE_CONTROL.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Орбитальный юнит. Дает +1 к <img src="/civilopediabe/images/food.png" alt="food" /> пище на принадлежащих вам клетках. За весь свой срок работы генерирует от 1 до 2 новых основных ресурсов на клетках без улучшения.</div>
		
		<h2>История</h2><div class="infobox">Метеорегулятор, также как и гелиоприемник, позволяет колонии использовать орбитальную сеть для повышения уровня жизни. С помощью направленных электромагнитных зарядов метеорегуляторы создают благоприятную погоду на всех клетках в своей зоне действия. Это позволяет колонии максимизировать производство пищи. Кроме того, управление погодой изменяет природу на неулучшенных клетках, в результате чего на них иногда появляются основные ресурсы. </div>
	</div>
</asp:Content>

