<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Neurolaboratorium</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Neurolaboratorium</div>
	<img src="/civilopediabe/images/large/BUILDING_NEUROLAB.png" alt="Neurolaboratorium" class="contentimage" />
	<div class="contentleft">
		<h2>Koszt:</h2><div class="infobox">255 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Utrzymanie:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		<h2>Nauka:</h2><div class="infobox">+10% <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>Wymaga technologii:</h2><div class="infobox"><a href="TECH_COGNITION.aspx" onmouseover="return tooltip('Kognicja');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_COGNITION.png" /></a></div>
		
		
		
		
		<h2>Doktryna:</h2><div class="infobox">Wymaga <span class="color_supremacy_affinity">poziomu 4 <img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> {@4_AffinityName[8]}</span>.</div>
	</div>
	<div class="contentright">
		<h2>Informacje o grze:</h2><div class="infobox">+1 <img src="/civilopediabe/images/research.png" alt="science" /> {3_YieldDesc[8]} z <img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> {5_ObjectDesc[8]}</div>
		
		<h2>Historia</h2><div class="infobox">W neurolaboratoriach znajduj&#261; si&#281; sieciowe interfejsy m&oacute;zgowe dla naukowc&oacute;w ze wszystkich dziedzin, uwalniaj&#261;ce ich od najbardziej &#380;mudnych i czasoch&#322;onnych obowi&#261;zk&oacute;w zwi&#261;zanych z badaniami. Te sieci - zwykle stworzone na bazie superkomputera kwantowego i wyposa&#380;one w najnowocze&#347;niejszy sprz&#281;t komunikacyjny do &#322;&#261;czenia si&#281; z sieciami danych planety - polegaj&#261; na bezpo&#347;rednim po&#322;&#261;czeniu m&oacute;zg-komputer, &#380;eby promowa&#263; wsp&oacute;&#322;prac&#281; interdyscyplinarn&#261; i innowacyjne teorie. Wewn&#281;trzne sztuczne sieci neuronowe z g&#322;&#281;bokim sprz&#281;&#380;eniem w prz&oacute;d maj&#261; podprogramy mog&#261;ce rozpoznawa&#263; wzory, uczy&#263; si&#281; liczbowo i wylicza&#263; bezparametrowe statystyki. Dzi&#281;ki temu neurolaboratoria mog&#261; filtrowa&#263; poprzednie badania, okre&#347;la&#263; przewidywania serii czasowych, autonomicznie analizowa&#263; potencjalne zastosowania praktyczne, a nawet podpowiada&#263; nowe drogi i aplikacje projekt&oacute;w badawczych. W niekt&oacute;rych neurolaboratoriach interfejs m&oacute;zg-komputer tworzy si&#281; &#347;rodkami nieingerencyjnymi, zwykle za pomoc&#261; magnetocefalografii lub funkcjonalnego rezonansu magnetycznego. Jednak nie jest to rozwi&#261;zanie tak skuteczne, jak inwazyjne interfejsy, np. implanty korowe lub neuroprocesorowe. Cz&#281;sto na terenie neurolaboratori&oacute;w istnieje mo&#380;liwo&#347;&#263; wszczepienia tych urz&#261;dze&#324; przez roboty chirurgiczne. Wi&#281;kszo&#347;&#263; neurolaboratori&oacute;w zosta&#322;a za&#322;o&#380;ona przez instytucje edukacji wy&#380;szej albo fundacje badawcze, cho&#263; cz&#281;&#347;&#263; z nich finansuj&#261; korporacje lub kolonie. Ka&#380;de nowe laboratorium to geometryczny wzrost wydajno&#347;ci bada&#324; na tej planecie. Wiele ostatnich odkry&#263; naukowych mo&#380;na przypisa&#263; pracom rozpocz&#281;tym i/lub zako&#324;czonym w neurolaboratoriach.</div>
	</div>
</asp:Content>

