<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Биотехнический завод</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Биотехнический завод</div>
	<img src="/civilopediabe/images/large/BUILDING_MICROBIAL_MINE.png" alt="Биотехнический завод" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">430 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>Производство:</h2><div class="infobox">+3 <img src="/civilopediabe/images/production.png" alt="production" /> , +10% <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_XENOMASS.aspx" onmouseover="return tooltip('Ксеномасса');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_XENOMASS.png" /></a></div>
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_SYNERGETICS.aspx" onmouseover="return tooltip('Синергетика');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_SYNERGETICS.png" /></a></div>
		
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_harmony_affinity">уровень 7 <img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>История</h2><div class="infobox">Одним из побочных направлений синергетики является биологический геоанализ, то есть извлечение экзотических минералов из сырой руды при помощи эпистатических микроорганизмов, выведенных путем генной мутации. В отличие от дорогостоящих и энергозатратных технологий, таких как экстремальный нагрев или применение химических реагентов, генно-модифицированные лактобациллы-археи (например, Pyrococcus furiosus и Sulfolobus metallicus) способны попросту "высасывать" минералы даже из руды, где их концентрация минимальна. Еще до эпохи Рассеяния при добыче полезных ископаемых на астероидах были впервые применены технологии микробиологического геоанализа и найдены несколько видов бактерий, способствующих изоляции редких почв и минералов в руде, полученной из мантии оливина. В ходе колониальных миссий были получены образцы и генетические схемы этих бактерий, легшие в основу научных исследований на новой планете. С тех пор выведено множество других микроорганизмов для производства редких и очень ценных элементов, не имеющих стабильных изотопов, таких как прометий и технеций. Микробиологические заводы, которые, как правило, размещаются вблизи от рудных точек, а в некоторых случаях и в подземных шахтах рядом с каньонами или буровыми скважинами, больше похожи на лаборатории, чем на горнодобывающие предприятия: все работы ведутся в отдельных чистых помещениях, что предотвращает загрязнение ценных минералов. С учетом того, что процесс микробиологического геоанализа наносит сравнительно малый вред экологии, в некоторых поселениях он быстро стал предпочтительным способом добычи даже самых обыкновенных минералов.</div>
	</div>
</asp:Content>

