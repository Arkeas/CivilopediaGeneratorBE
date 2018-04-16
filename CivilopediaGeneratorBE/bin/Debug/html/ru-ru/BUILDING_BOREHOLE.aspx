<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Скважина</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Скважина</div>
	<img src="/civilopediabe/images/large/BUILDING_BOREHOLE.png" alt="Скважина" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">500 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>Производство:</h2><div class="infobox">+5 <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_PLANETARY_ENGINEERING.aspx" onmouseover="return tooltip('Планетарная инженерия');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PLANETARY_ENGINEERING.png" /></a></div>
		
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_purity_affinity">уровень 8 <img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>История</h2><div class="infobox">Бурение скважин практикуется со времен китайской династии Хань. Тогда шахты достигали 600 метров в глубину. До Великой Ошибки самой глубокой скважиной на Старой Земле была Кольская сверхглубокая скважина глубиной 12262 метра, но с тех пор ее превзошли скважины на Марсе и Ганимеде. После того как колониальные геологи построили вертикальные сейсмические профили многочисленных каньонов новой планеты, геоинженеры начали изучать возможности бурения глубоких шахт для различных промышленных целей. Буровые головки, размещенные в близлежащих каньонах, позволили проникнуть на невиданные до этого глубины. Первые глубокие скважины достигали около 10000 метров - они позволили пробиться к глубинным водоносным слоям и использовать их для удовлетворения увеличившихся бытовых и промышленных потребностей в воде. Менее глубокие скважины использовались для добычи минеральных ресурсов и нефти, а также в научных целях. Самые же глубокие шахты предназначены для использования геотермальных ресурсов молодой планеты. Их потенциал практически безграничен, а относительно безопасный источник энергии дал поселениям, основанным рядом с каньонами, явное преимущество. Температура на границе ядра может превышать 4000°C, а разница температур на поверхности и близ ядра здесь выше, чем на Старой Земле. Поэтому тепловая энергия, получаемая из скважин каньона, практична и доступна. В некоторых поселениях скважины небольшого диаметра (около 1000-2000 метров) служат для сезонного хранения тепловой энергии, заключенной в горячие и холодные жидкости для последующего использования.</div>
	</div>
</asp:Content>

