<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Puits de p&eacute;trole</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Puits de p&eacute;trole</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PETROL_WELL.png" alt="Puits de p&eacute;trole" class="contentimage" />
	<div class="contentleft">
		
		<h2>Sant&eacute; :</h2><div class="infobox">1 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>Produit :</h2><div class="infobox">+2 <img src="/civilopediabe/images/energy.png" alt="energy" /> &Eacute;nergie (<img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> P&eacute;trole)<br />+1 <img src="/civilopediabe/images/production.png" alt="production" /> Production (<img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> P&eacute;trole)</div>
		
		
		<h2>Am&eacute;nage les ressources :</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('P&eacute;trole');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>Technologies requises :</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('Chimie');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Informations de jeu :</h2><div class="infobox">En se servant des puits, les colonies peuvent exploiter l'&eacute;nergie produite naturellement par leur nouveau monde. M&ecirc;me si le p&eacute;trole existe toujours, ce sont les nouvelles ressources qui font que les forages en terre s&egrave;che restent une part importante de l'industrie humaine. Lorsqu'ils sont &eacute;tablis sur une terre s&egrave;che, les puits peuvent fournir l'acc&egrave;s &agrave; l'&eacute;nergie g&eacute;othermique et &agrave; la x&eacute;nomasse, deux ressources tr&egrave;s pris&eacute;es.</div>
	</div>
</asp:Content>

