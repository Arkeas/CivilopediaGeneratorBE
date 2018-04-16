<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Планетарный резак</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Планетарный резак</div>
	<img src="/civilopediabe/images/large/UNIT_PLANET_CARVER.png" alt="Планетарный резак" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">200 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		<h2>Дальний бой:</h2><div class="infobox">120 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>Радиус:</h2><div class="infobox">2 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		
		
		<h2>Орбитальный радиус:</h2><div class="infobox">2 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>Число ходов на орбите:</h2><div class="infobox">30 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Нефть');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Титан');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_ORBITAL_AUTOMATION.aspx" onmouseover="return tooltip('Орбитальная автоматизация');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ORBITAL_AUTOMATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Орбитальный юнит. Поражает вражеские юниты распыляющей энергией.</div>
		
		<h2>История</h2><div class="infobox">Планетарный резак - следующая ступень эволюции орбитального лазера. Изначально предполагалось, что его будут использовать при добыче руды, однако военно-промышленный комплекс быстро модифицировал его, превратив в космическое оружие. Так как планетарный резак способен пробивать кору планеты, он наносит гораздо больше урона, чем орбитальный лазер. Точное значение боевой мощи резака установить невозможно, так как взрыв, возникающий после применения резака, уничтожает все.</div>
	</div>
</asp:Content>

