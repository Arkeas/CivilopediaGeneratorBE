<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Kontroler pogody</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Kontroler pogody</div>
	<img src="/civilopediabe/images/large/UNIT_WEATHER_CONTROLLER.png" alt="Kontroler pogody" class="contentimage" />
	<div class="contentleft">
		<h2>Koszt:</h2><div class="infobox">130 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>Zasi&#281;g efektu orbitalnego:</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>Okres tury orbitalnej:</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>Wymagane zasoby:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Ropa naftowa');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Tytan');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>Wymaga technologii:</h2><div class="infobox"><a href="TECH_CLIMATE_CONTROL.aspx" onmouseover="return tooltip('Sterowanie klimatem');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CLIMATE_CONTROL.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Informacje o grze:</h2><div class="infobox">Jednostka orbitalna. +1 do <img src="/civilopediabe/images/food.png" alt="food" /> &#380;ywno&#347;ci z twoich p&oacute;l. Wytwarza 1 do 2 podstawowych zasob&oacute;w na polach bez ulepsze&#324;.</div>
		
		<h2>Historia</h2><div class="infobox">Podobnie jak kolektor s&#322;oneczny, kontroler pogody pozwala kolonii na wykorzystanie swojej sieci orbitalnej na potrzeby poprawienia jako&#347;ci &#380;ycia na planecie. Satelity tego rodzaju wykorzystuj&#261; precyzyjne wy&#322;adowania elektromagnetyczne w celu stworzenia sprzyjaj&#261;cej pogody na wszystkich polach w swoim zasi&#281;gu, co pozwala kolonii na optymalizacj&#281; produkcji &#380;ywno&#347;ci, zwi&#281;kszaj&#261;c jej przych&oacute;d na ka&#380;dym posiadanym polu. Kontroler pogody zmienia r&oacute;wnie&#380; natur&#281; nieulepszonych obszar&oacute;w, przez co pojawiaj&#261; si&#281; na nich czasem zasoby podstawowe.</div>
	</div>
</asp:Content>

