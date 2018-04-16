<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Гелиоприемник</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Гелиоприемник</div>
	<img src="/civilopediabe/images/large/UNIT_SOLAR_COLLECTOR.png" alt="Гелиоприемник" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">80 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>Орбитальный радиус:</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>Число ходов на орбите:</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_PHOTOSYSTEMS.aspx" onmouseover="return tooltip('фотосистем');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PHOTOSYSTEMS.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Орбитальный юнит. Дает +1 к <img src="/civilopediabe/images/energy.png" alt="energy" /> энергии на принадлежащих вам клетках. Также любой город в радиусе действия получает +20% к общей выработке <img src="/civilopediabe/images/energy.png" alt="energy" /> энергии.</div>
		
		<h2>История</h2><div class="infobox">Гелиоприемник был создан на основе уже существующих спутников, таких как орбитальный лазер и конденсатор испарений. Фактически это орбитальная солнечная батарея, которая улавливает энергию звезды и передает ее на поверхность планеты. Хотя в ходе процесса огромное количество энергии теряется, гелиоприемник создает достаточно энергии, чтобы эта "утечка" казалась минимальной. Гелиоприемник может накапливать энергию и для города, и для всей колонии. При этом в городе повышается уровень накопления энергии, а в колонии - уровень энергии на всех клетках.</div>
	</div>
</asp:Content>

