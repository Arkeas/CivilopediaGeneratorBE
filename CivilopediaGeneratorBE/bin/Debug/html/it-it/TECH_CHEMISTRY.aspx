<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Chimica</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Chimica</div>
	<img src="/civilopediabe/images/large/TECH_CHEMISTRY.png" alt="Chimica" class="contentimage" />
	<div class="contentleft">
		<h2>Costo:</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>Edifici sbloccati:</h2><div class="infobox"><a href="BUILDING_LABORATORY.aspx" onmouseover="return tooltip('Laboratorio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_LABORATORY.png" /></a><a href="BUILDING_RECYCLER.aspx" onmouseover="return tooltip('Centro di riciclaggio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RECYCLER.png" /></a></div>
        
		<h2>Risorse rivelate:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Petrolio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>Azioni permesse:</h2><div class="infobox"><a href="IMPROVEMENT_PETROL_WELL.aspx" onmouseover="return tooltip('Costruisci un Pozzo di petrolio');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PETROL_WELL.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">Permette la costruzione degli edifici <span class="color_highlight_building">Laboratorio</span> e <span class="color_highlight_building">Centro di riciclaggio</span>. Permette ai Lavoratori di costruire nelle caselle il miglioramento <span class="color_highlight_improvement">Pozzo di petrolio</span>. Rivela la risorsa <span class"color_highlight_resource">Petrolio</span> sulla mappa.</div>
		
		<h2>Citazione:</h2><div class="infobox">"Le risorse di un mondo vecchio quattro miliardi d'anni... e un pugno di uomini se le devono spartire. Ci faremo una fortuna, qui!"<br />- Hutama, Siamo tutti destinati a prosperare</div>
		<h2>Storia:</h2><div class="infobox">Dai tempi antichi in cui Bacon, Boyle, Hooke e Mayow iniziarono a trasformare l'alchimia in una disciplina scientifica, portando ordine e rigore nello studio degli elementi, la chimica si &egrave; sempre dimostrata uno dei campi di ricerca pi&ugrave; vitali. Via via che che le sue leggi venivano codificate e la natura della materia compresa, la chimica divenne un'area fondamentale per lo sviluppo scientifico e industriale. Quando l'umanit&agrave; si spinse nello spazio, nuove branche si aprirono alla ricerca, come l'astrochimica, la chimica sovramolecolare e la chimica organometallica. Nuovi pianeti portano nuove scoperte, come la firaxite o la pietra fluttuante, che a loro volta portano la ricerca chimica in direzioni inaspettate. Tra tutte le scienze applicate, si può affermare senza dubbio che la chimica &egrave; la pi&ugrave; fondamentale per il successo della colonizzazione umana del cosmo.</div>
	</div>
</asp:Content>

