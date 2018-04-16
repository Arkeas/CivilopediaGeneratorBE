<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Генопитомник</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Генопитомник</div>
	<img src="/civilopediabe/images/large/BUILDING_GENE_GARDEN.png" alt="Генопитомник" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">200 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>Здоровье:</h2><div class="infobox">+2 <img src="/civilopediabe/images/health.png" alt="health" /></div>
		
		
		
		<h2>Наука:</h2><div class="infobox">+1 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_GENETIC_DESIGN.aspx" onmouseover="return tooltip('Генетическое проектирование');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_GENETIC_DESIGN.png" /></a></div>
		
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_purity_affinity">уровень 2 <img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>История</h2><div class="infobox">Первые колониальные генопитомники были основаны для создания и поставок терапевтических трансгенов ДНК - интегрированных в геном или выступающих в качестве внешней эписомы - для использования в соматических и зародышевых методах. С помощью рекомбинантных вирусов и "голой" ДНК врачи смогли вылечить или ограничить ряд генетических заболеваний, по-прежнему распространенных у колонистов со Старой Земли, таких как болезнь Хантингтона, Паркинсона, Альцгеймера, лимфолейкоз, хориоидеремия, а также нескольких видов иммунодефицита. В ряде случаев генопитомники также стали площадкой для исследований в области генной инженерии и улучшения генома - эти две области приобретали все большее значение в попытках колоний адаптировать население к жизни на новой планете. Со временем методы, разработанные в генопитомниках, стали использоваться для адаптивных мутаций человека. Сначала применяли незначительные мутации, приводившие к метаболическим изменениям; они позволяли привыкнуть к местной флоре и уменьшить зависимость от традиционного сельского хозяйства. Позже генопитомники стали важной частью биотехнологической инфраструктуры многих поселений, внеся вклад в производство продуктов питания, биомедицину, биоробототехнику, переработку отходов и даже производство биотоплива. Но их роль в борьбе с болезнями осталась значительной, особенно в сферах прикладной иммунологии, предродовой генетической диагностики и фармагеномики.</div>
	</div>
</asp:Content>

