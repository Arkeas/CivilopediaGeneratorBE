<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Kopalnia firaksytu</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Kopalnia firaksytu</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FIRAXITE_MINE.png" alt="Kopalnia firaksytu" class="contentimage" />
	<div class="contentleft">
		<h2>Utrzymanie:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>Dochody:</h2><div class="infobox">+3 <img src="/civilopediabe/images/research.png" alt="science" /> {3_YieldDesc[8]} z <img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> {5_ObjectDesc[8]}</div>
		
		
		<h2>Ulepsza zasoby:</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('Firaksyt');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>Wymaga technologii:</h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('Robotyka');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Informacje o grze:</h2><div class="infobox">G&oacute;rnictwo by&#322;o wa&#380;ne nie tylko na Ziemi. Na tym nietkni&#281;tym obcym &#347;wiecie zapotrzebowanie na zasoby i produkcj&#281; jest olbrzymie - pozwalaj&#261; one na tworzenie jednostek, budowli i cud&oacute;w umo&#380;liwiaj&#261;cych przetrwanie. Kopalnie mo&#380;na budowa&#263; na zwyk&#322;ych wzg&oacute;rzach - zwi&#281;ksza to produktywno&#347;&#263;. Zapewniaj&#261; one r&oacute;wnie&#380; dost&#281;p do wa&#380;nych zasob&oacute;w, jak mied&#378;, krzemionka i rzadko spotykany firaksyt.</div>
	</div>
</asp:Content>

