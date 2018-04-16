<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Ксенокавалерия</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Ксенокавалерия</div>
	<img src="/civilopediabe/images/large/UNIT_XENO_CAVALRY.png" alt="Ксенокавалерия" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">210 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Бой:</h2><div class="infobox">36 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>Передвижение:</h2><div class="infobox">3 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>Нужные ресурсы:</h2><div class="infobox"><a href="RESOURCE_XENOMASS.aspx" onmouseover="return tooltip('Ксеномасса');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_XENOMASS.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_ALIEN_DOMESTICATION.aspx" onmouseover="return tooltip('Приручение инопланетян');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ALIEN_DOMESTICATION.png" /></a></div>
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_harmony_affinity">уровень 7 <img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox"><span class="color_harmony_affinity">Уникальный юнит <img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> Гармонии</span>. Эти солдаты едут в бой на инопланетных животных. Юнит ближнего боя для стремительных атак.</div>
		
		<h2>История</h2><div class="infobox">Идея кавалерии стара: это войско с более высокой подвижностью, чем у обычной пехоты. Метод обретения мобильности менялся со временем: сначала лошади, затем наземные транспортные средства с двигателями внутреннего сгорания, затем самолеты с двигателем внутреннего сгорания, а затем опять транспортные средства (и даже лошади, пока они не вымерли) во время Великой Ошибки. Военные ученые выявили точную взаимосвязь стоимости верхового животного (или его аналога) и мобильности, что позволяет предсказать, на чем будут ездить солдаты.<br /><br />Также военные ученые установили, что в колониях кавалерия будет на ранних этапах использовать ксеноформы. Живые существа примечательны не только скоростью, но и способностью передвигаться по пересеченной местности. Ноги ступают там, где колеса ступить боятся. Жук-хищник оказался прекрасным верховым животным. Как и лошадь, он обладает достаточными когнитивными способностями и потому способен слушаться человека, а при хорошей выучке может действовать самостоятельно. У жуков по природе ослаблен инстинкт самосохранения, что делает их бесстрашными. Их грузоподъемность относительно высока, несмотря на стройное телосложение. Генетические исследования быстро остановились на породе "Новая кавалькада", ставшей матерью всех нынешних юнитов кавалерии.<br /><br />Любопытно, что времена и системы меняются, а кавалеристы - нет: они всегда жаждут риска, любят скорость, общительны и ярки. Ксенокавалерия не стала исключением. Кавалеристы тянулись к архаичным видам оружия, таким как сабли и копья. Их форма быстро покрылась узорами - для красоты, а не только по нужде и для удобства распознавания. Их любимыми стратегическими операциями стали набеги - быстрые удары по плохо защищенным целям в тыловых районах. Когда ксенокавалерия вступает в битву, кличи ее солдат сливаются в единый вой, искаженный самовольными дополнениями к доспехам и шлемам, и его дополняет стрекот жуков.</div>
	</div>
</asp:Content>

