<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: ВШБО</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">ВШБО</div>
	<img src="/civilopediabe/images/large/UNIT_SABR.png" alt="ВШБО" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">320 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Бой:</h2><div class="infobox">16 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		<h2>Дальний бой:</h2><div class="infobox">52 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>Радиус:</h2><div class="infobox">3 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		<h2>Передвижение:</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('Фираксит');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_SYNTHETIC_THOUGHT.aspx" onmouseover="return tooltip('Искусственное мышление');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_SYNTHETIC_THOUGHT.png" /></a></div>
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_supremacy_affinity">уровень 9 <img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox"><span class="color_supremacy_affinity">Уникальный юнит <img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> Превосходства</span>. Роботизированная артиллерийская платформа, обладающая исключительной дальностью и точностью стрельбы. Медленный, но мощный вид дальнобойной и осадной артиллерии.</div>
		
		<h2>История</h2><div class="infobox">Военный юнит применяет силу в отношении определенной цели. Для оптимизации военного юнита разработчики могут либо предоставить устройство с большей силой, либо ослабить цель. Последним трудно управлять, но у каждой военной цели есть слабые места. Оружейная система, которая всегда поражает слабые места, может быть невероятно эффективной, даже если силы ее скромны. Также это перекликается с некоторыми постулатами идеологии Превосходства.<br /><br />Военное шагающее батарейное орудие (ВШБО) было создано для того чтобы подарить артиллеристу, обычно неэффективному, точность в поражении различных видов целей. ВШБО уникально не потому, что пушка его велика (у него ее нет), а потому, что он может рассчитать правильный удар применимо к правильной цели в правильное время, тем самым нанося максимальный урон. Недостаток ВШБО состоит в том, что он в значительной степени зависим от своей сенсорной сети. Эта сеть собирает и интерпретирует данные о цели, с которой сталкивается ВШБО. Она использует метеорологические сенсоры для коррекции погодных схем и более дальнобойного обстрела (и ответная реакция этих систем требует времени на сбор и интеграцию). Наконец, динамический каталог интеллекта целей и мощная система их распознавания позволяют юниту ВШБО определить, с кем он столкнулся, где прячется цель, а также какой системой лучше ее атаковать. В конечном результате перед нами предстает медленное орудие, наносящее эффективный удар с почти идеальной точностью, впечатляющей даже опытных наблюдателей.<br /><br />Боевая история ВШБО превосходна. Соотношение попадание в цель / уничтожение приближается к единице, выживание после бомбардировки ВШБО называют божественным чудом. В Планетарной академии воинского дела и вооружения хранится вольфрамовая пуля ВШБО времен битвы за Вюншель Кег. Надпись под ней гласит: "Этот выстрел произведен 56-м батальоном ВШБО. Он не попал в цель".</div>
	</div>
</asp:Content>

