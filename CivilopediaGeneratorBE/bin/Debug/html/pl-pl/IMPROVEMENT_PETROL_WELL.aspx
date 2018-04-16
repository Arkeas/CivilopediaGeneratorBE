<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Szyb naftowy</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Szyb naftowy</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PETROL_WELL.png" alt="Szyb naftowy" class="contentimage" />
	<div class="contentleft">
		
		<h2>Zdrowie:</h2><div class="infobox">1 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>Dochody:</h2><div class="infobox">+2 <img src="/civilopediabe/images/energy.png" alt="energy" /> {3_YieldDesc[8]} z <img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> {5_ObjectDesc[8]}<br />+1 <img src="/civilopediabe/images/production.png" alt="production" /> {3_YieldDesc[8]} z <img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> {5_ObjectDesc[8]}</div>
		
		
		<h2>Ulepsza zasoby:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Ropa naftowa');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>Wymaga technologii:</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('Chemia');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Informacje o grze:</h2><div class="infobox">Dzi&#281;ki szybom koloni&#347;ci mog&#261; wykorzystywa&#263; naturalnie wyst&#281;puj&#261;c&#261; na nowej planecie energi&#281;. Cho&#263; ropa naftowa nadal istnieje, to nowe zasoby sprawiaj&#261;, &#380;e odwierty na l&#261;dzie wci&#261;&#380; s&#261; wa&#380;nym elementem ludzkiego przemys&#322;u. Na przyk&#322;ad zbudowane na suchej ziemi szyby mog&#261; zapewni&#263; dost&#281;p do niezwykle potrzebnych zasob&oacute;w energii geotermicznej i ksenomasy. </div>
	</div>
</asp:Content>

