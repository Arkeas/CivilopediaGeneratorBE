<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Биофабрика</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Биофабрика</div>
	<img src="/civilopediabe/images/large/BUILDING_BIOFACTORY.png" alt="Биофабрика" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">290 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>Производство:</h2><div class="infobox">+3 <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_ORGANICS.aspx" onmouseover="return tooltip('Органика');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ORGANICS.png" /></a></div>
		
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_harmony_affinity">уровень 4 <img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">+1 к <img src="/civilopediabe/images/production.png" alt="production" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/chitin.png" alt="chitin" /> {5_ObjectDesc[2]}</div>
		
		<h2>История</h2><div class="infobox">Колониальные биофабрики возникли, когда поселенцы начали понимать потенциал местных форм жизни. На протяжении тысяч лет человечество применяло биотехнологии, то есть использовало организмы для производства материалов и химических веществ в сельском хозяйстве и медицине. В конце XXI века, столкнувшись с экологическими проблемами и нехваткой ресурсов, ученые на Старой Земле стали промышленно создавать геномы, синтетические материалы, металлы, ткани, биороботы и биотопливо. Использовали они как традиционные методы, так и новые. После Планетаризации местные кораллы, грибы и водоросли, занимающие огромные площади, были изучены и описаны, но использовать их в полной мере люди сумели только спустя несколько поколений. Теперь из коралловых отложений, добываемых в морях новой планеты, на биофабриках производят строительные материалы, фильтры, фармацевтические препараты, редкие виды руды и, конечно же, ювелирные изделия. Водоросли преимущественно ложатся в основу биотоплива, но еще из них делают агары, альгинаты, удобрения, пищевые концентраты и краски. Грибы же новой планеты можно применять чрезвычайно разнообразно, так что возможности практически безграничны, тем более что новые виды грибов находят каждый год. Особое место среди биофабрик занимают те, что используют местные виды грибов для производства полиамидных микроволокон, а также тепловой и наноэлектрической изоляции, необходимых для создания квантовых компьютеров, автономных роботов и использующих магнитную левитацию автомобилей.</div>
	</div>
</asp:Content>

