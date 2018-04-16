<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Mine</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Mine</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MINE.png" alt="Mine" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Produit :</h2><div class="infobox">2</span> <img src="/civilopediabe/images/production.png" alt="production" /> Production<br />+1 <img src="/civilopediabe/images/energy.png" alt="energy" /> &Eacute;nergie (<img src="/civilopediabe/images/copper.png" alt="copper" /> Cuivre)<br />+1 <img src="/civilopediabe/images/culture.png" alt="culture" /> Culture (<img src="/civilopediabe/images/gold.png" alt="gold" /> Or)<br />+1 <img src="/civilopediabe/images/research.png" alt="science" /> Science (<img src="/civilopediabe/images/silica.png" alt="silica" /> Silice)<br />+3 <img src="/civilopediabe/images/production.png" alt="production" /> Production (<img src="/civilopediabe/images/titanium.png" alt="titanium" /> Titane)</div>
		
		
		<h2>Am&eacute;nage les ressources :</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('Titane');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a><a href="RESOURCE_GOLD.aspx" onmouseover="return tooltip('Or');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_GOLD.png" /></a><a href="RESOURCE_COPPER.aspx" onmouseover="return tooltip('Cuivre');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_COPPER.png" /></a><a href="RESOURCE_SILICA.aspx" onmouseover="return tooltip('Silice');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_SILICA.png" /></a></div>
		
		<h2>Construction possible sur :</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('Colline');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>Informations de jeu :</h2><div class="infobox">L'importance du minage transcende les limites terrestres. Sur un monde extraterrestre encore vierge, les besoins en ressources et en production sont &eacute;quivalents, puisqu'ils permettent la construction des unit&eacute;s, b&acirc;timents et merveilles n&eacute;cessaires &agrave; la survie. Les mines peuvent &ecirc;tre construites sur de simples collines pour am&eacute;liorer la productivit&eacute;. Elles donnent &eacute;galement acc&egrave;s &agrave; des ressources importantes telles que le cuivre, la silice et, plus rare, le firaxite.</div>
	</div>
</asp:Content>

