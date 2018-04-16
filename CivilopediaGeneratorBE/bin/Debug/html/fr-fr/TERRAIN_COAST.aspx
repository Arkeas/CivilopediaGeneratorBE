<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: C&ocirc;te</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">C&ocirc;te</div>
	<img src="/civilopediabe/images/large/TERRAIN_COAST.png" alt="C&ocirc;te" class="contentimage" />
	<div class="contentleft">
		<h2>Produit :</h2><div class="infobox">1</span> <img src="/civilopediabe/images/food.png" alt="food" /> Nourriture, 1</span> <img src="/civilopediabe/images/energy.png" alt="energy" /> &Eacute;nergie</div>
		<h2>Co&ucirc;t du d&eacute;placement :</h2><div class="infobox">1 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>Modificateur de combat :</h2><div class="infobox">0%</div>
		
<h2>Emplacement :</h2><div class="infobox"><a href="FEATURE_ICE.aspx" onmouseover="return tooltip('Glace');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_ICE.png" /></a></div>
		
<h2>Ressources trouv&eacute;es sur :</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('P&eacute;trole');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('Corail');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('Algue');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>Informations de jeu :</h2><div class="infobox">Les cases c&ocirc;ti&egrave;res sont les cases d'oc&eacute;an directement adjacentes &agrave; la terre ferme. Elles fournissent de la nourriture et de l'&eacute;nergie aux villes &agrave; proximit&eacute;. Seules les unit&eacute;s navales, a&eacute;riennes et planantes, et les unit&eacute;s terrestres "embarqu&eacute;es" peuvent traverser ces cases.</div>
	</div>
</asp:Content>

