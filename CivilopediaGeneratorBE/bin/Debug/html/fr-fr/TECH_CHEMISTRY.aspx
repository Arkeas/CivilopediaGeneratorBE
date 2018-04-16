<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Chimie</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Chimie</div>
	<img src="/civilopediabe/images/large/TECH_CHEMISTRY.png" alt="Chimie" class="contentimage" />
	<div class="contentleft">
		<h2>Co&ucirc;t :</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>B&acirc;timents d&eacute;bloqu&eacute;s :</h2><div class="infobox"><a href="BUILDING_LABORATORY.aspx" onmouseover="return tooltip('Laboratoire');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_LABORATORY.png" /></a><a href="BUILDING_RECYCLER.aspx" onmouseover="return tooltip('Recycleur');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RECYCLER.png" /></a></div>
        
		<h2>Ressources d&eacute;voil&eacute;es :</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('P&eacute;trole');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>Actions autoris&eacute;es :</h2><div class="infobox"><a href="IMPROVEMENT_PETROL_WELL.aspx" onmouseover="return tooltip('Construire un puits de p&eacute;trole');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PETROL_WELL.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>Informations de jeu :</h2><div class="infobox">Permet de construire le <span class="color_highlight_building">laboratoire</span> et le <span class="color_highlight_building">recycleur</span>. Permet aux ouvriers de construire le <span class="color_highlight_improvement">puits de p&eacute;trole</span>, un am&eacute;nagement de case. R&eacute;v&egrave;le l'emplacement des ressources de <span class"color_highlight_resource">p&eacute;trole</span> sur la carte.</div>
		
		<h2>Citation :</h2><div class="infobox">"Quatre milliards d'ann&eacute;es de ressources partag&eacute;es entre une poign&eacute;e de gens. Nous allons faire fortune ici !" <br />- Hutama, N&eacute;s pour prosp&eacute;rer</div>
		<h2>Histoire</h2><div class="infobox">Depuis les temps anciens o&ugrave; Bacon, Boyle, Hooke et Mayow commenc&egrave;rent &agrave; faire de l'alchimie une discipline scientifique, apportant ainsi rigueur et ordre dans l'&eacute;tude des &eacute;l&eacute;ments, la chimie est devenue l'un des plus importants domaines de recherche. Une fois les lois de la chimie codifi&eacute;es et la nature de la mati&egrave;re comprise, la chimie devint une part vitale de la sph&egrave;re industrielle et scientifique. Quand l'homme se lan&ccedil;a &agrave; la conqu&ecirc;te de l'espace, de nouvelles branches virent le jour, telles que l'astrochimie, la chimie supramol&eacute;culaire et la chimie organom&eacute;tallique. Les nouvelles plan&egrave;tes amen&egrave;rent leur lot de d&eacute;couvertes, comme le firaxite et l'a&eacute;roche, qui portent les recherches chimiques vers des chemins inattendus. On peut dire que, parmi les sciences appliqu&eacute;es, la chimie est la plus essentielle &agrave; la r&eacute;ussite de la colonisation du cosmos par l'homme.</div>
	</div>
</asp:Content>

