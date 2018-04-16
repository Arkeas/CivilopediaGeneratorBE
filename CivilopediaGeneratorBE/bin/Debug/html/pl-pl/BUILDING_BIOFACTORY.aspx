<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Biofabryka</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Biofabryka</div>
	<img src="/civilopediabe/images/large/BUILDING_BIOFACTORY.png" alt="Biofabryka" class="contentimage" />
	<div class="contentleft">
		<h2>Koszt:</h2><div class="infobox">290 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Utrzymanie:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>Produkcja:</h2><div class="infobox">+3 <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		
        
		
		<h2>Wymaga technologii:</h2><div class="infobox"><a href="TECH_ORGANICS.aspx" onmouseover="return tooltip('Chemia organiczna');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ORGANICS.png" /></a></div>
		
		
		
		
		<h2>Doktryna:</h2><div class="infobox">Wymaga <span class="color_harmony_affinity">poziomu 4 <img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> {@4_AffinityName[8]}</span>.</div>
	</div>
	<div class="contentright">
		<h2>Informacje o grze:</h2><div class="infobox">+1 <img src="/civilopediabe/images/production.png" alt="production" /> {3_YieldDesc[8]} z <img src="/civilopediabe/images/chitin.png" alt="chitin" /> {5_ObjectDesc[8]}</div>
		
		<h2>Historia</h2><div class="infobox">Kolonialne biofabryki powsta&#322;y, gdy koloni&#347;ci zacz&#281;li rozumie&#263; potencja&#322; drzemi&#261;cy w formach &#380;ycia zamieszkuj&#261;cych t&#281; planet&#281;. Przez tysi&#261;ce lat ludzko&#347;&#263; korzysta&#322;a z biotechnologii, czyli u&#380;ywania organizm&oacute;w do produkcji substancji chemicznych i materia&#322;&oacute;w, w rolnictwie i medycynie. Pod koniec XXI w., w obliczu zagro&#380;e&#324; ekologicznych i kurcz&#261;cych si&#281; zasob&oacute;w, naukowcy ze Starej Ziemi wykorzystywali nowe i tradycyjne techniki do przemys&#322;owej produkcji genom&oacute;w, syntetyk&oacute;w, metali, tekstyli&oacute;w, biorobot&oacute;w i biopaliw. Po l&#261;dowaniu na planecie odkryto i skatalogowano du&#380;e zasoby koralu, grzyb&oacute;w i alg, ale dopiero po kilku pokoleniach mo&#380;na by&#322;o w pe&#322;ni z nich skorzysta&#263;. Obecnie biofabryki u&#380;ywaj&#261; koralu pozyskiwanego z m&oacute;rz tej planety do produkcji materia&#322;&oacute;w budowlanych, filtr&oacute;w, farmaceutyk&oacute;w, rzadkich minera&#322;&oacute;w i oczywi&#347;cie bi&#380;uterii. Algi s&#261; stosowane przede wszystkim jako biopaliwo, ale stanowi&#261; te&#380; &#378;r&oacute;d&#322;o wi&#281;kszo&#347;ci kolonialnej produkcji agar&oacute;w, kwas&oacute;w alginowych, nawoz&oacute;w, koncentrat&oacute;w &#380;ywno&#347;ci i wielu barwnik&oacute;w. Biotechnologiczne zastosowania tutejszych grzyb&oacute;w s&#261; za&#347; praktycznie niesko&#324;czone, co roku odkrywa si&#281; nowe. Warto wymieni&#263; w&#347;r&oacute;d nich mi&#281;dzy innymi biofabryki u&#380;ywaj&#261;ce lokalnych gatunk&oacute;w grzyb&oacute;w do produkcji poliamidowych mikrow&#322;&oacute;kien oraz izolator&oacute;w termicznych i nanoelektrycznych, niezb&#281;dnych w komputerach kwantowych, autonomicznych robotach i pojazdach magnetycznych.</div>
	</div>
</asp:Content>

