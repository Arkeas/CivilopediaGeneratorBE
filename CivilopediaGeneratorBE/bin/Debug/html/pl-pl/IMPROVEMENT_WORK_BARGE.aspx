<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Barka robocza</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Barka robocza</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_WORK_BARGE.png" alt="Barka robocza" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Dochody:</h2><div class="infobox">+1 <img src="/civilopediabe/images/food.png" alt="food" /> {3_YieldDesc[8]} z <img src="/civilopediabe/images/algae.png" alt="algae" /> {5_ObjectDesc[8]}<br />+1 <img src="/civilopediabe/images/research.png" alt="science" /> {3_YieldDesc[8]} z <img src="/civilopediabe/images/coral.png" alt="coral" /> {5_ObjectDesc[8]}<br />+1 <img src="/civilopediabe/images/production.png" alt="production" /> {3_YieldDesc[8]} z <img src="/civilopediabe/images/coral.png" alt="coral" /> {5_ObjectDesc[8]}</div>
		
		
		<h2>Ulepsza zasoby:</h2><div class="infobox"><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('Alg');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('Koral');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a></div>
		<h2>Wymaga technologii:</h2><div class="infobox"><a href="TECH_PLANETARY_SURVEY.aspx" onmouseover="return tooltip('Map gwiazd');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PLANETARY_SURVEY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Informacje o grze:</h2><div class="infobox">Barki robocze to powszechnie wykorzystywane ulepszenie stosowane w okolicach zasob&oacute;w przybrze&#380;nych (korali i alg). Te p&#322;ywaj&#261;ce platformy produkuje si&#281; w miastach portowych i holuje w odpowiednie miejsce, gdzie z ich pomoc&#261; eksploatuje si&#281; cenne zasoby.</div>
	</div>
</asp:Content>

