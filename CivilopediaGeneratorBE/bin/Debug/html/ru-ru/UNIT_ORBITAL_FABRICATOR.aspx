<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Орбитальный завод</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Орбитальный завод</div>
	<img src="/civilopediabe/images/large/UNIT_ORBITAL_FABRICATOR.png" alt="Орбитальный завод" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">130 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>Орбитальный радиус:</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>Число ходов на орбите:</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Нефть');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Титан');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_GEOSCAPING.aspx" onmouseover="return tooltip('Геопейзаж');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_GEOSCAPING.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Орбитальный юнит. +1 к <img src="/civilopediabe/images/production.png" alt="production" /> производству на принадлежащих вам клетках. За срок работы генерирует от 1 до 2 новых стратегических ресурсов на клетках без улучшения.</div>
		
		<h2>История</h2><div class="infobox">Орбитальный завод - нечто среднее между гелиоприемником и метеорегулятором. Он использует как солнечную энергию, так и электромагнитные волны для создания точек повышенного давления. Это давление увеличивает силу определенных ресурсов, тем самым повышая уровень производства на всех клетках колонии. Словно метеорегулятор, орбитальный завод также время от времени изменяет еще не улучшенные клетки, в результате чего на них появляются источники стратегических ресурсов.</div>
	</div>
</asp:Content>

