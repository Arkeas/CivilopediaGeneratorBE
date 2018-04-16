<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Osservatorio</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Osservatorio</div>
	<img src="/civilopediabe/images/large/BUILDING_OBSERVATORY.png" alt="Osservatorio" class="contentimage" />
	<div class="contentleft">
		<h2>Costo:</h2><div class="infobox">100 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Mantenimento:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		<h2>Scienza:</h2><div class="infobox">+2 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>Tecnologie propedeutiche:</h2><div class="infobox"><a href="TECH_PHYSICS.aspx" onmouseover="return tooltip('Fisica');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PHYSICS.png" /></a></div>
		
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">+1 <img src="/civilopediabe/images/research.png" alt="science" /> Scienza da <img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> Firaxite</div>
		
		<h2>Storia:</h2><div class="infobox">Tra le prime installazioni scientifiche costruite dai coloni ci furono gli osservatori, utilizzati non solo per la mappatura del nuovo cielo, ma anche per approfondire gli studi di meteorologia, geologia, oceanografia e vulcanologia e arrivare a comprendere meglio il nuovo pianeta. Gli osservatori con base a terra utilizzavano una gamma di strumenti per monitorare lo spettro elettromagnetico, con cui arrivarono a costruire una mappa composita dei campi stellari vicini e lontani e un rilevamento completo dei detriti lasciati in orbita dalle varie navi interstellari umane. Grazie all'atmosfera pi&ugrave; rarefatta, i radiotelescopi fornirono immagini del cuore della galassia molto superiori a quelle di qualsiasi strumento disponibile sulla vecchia Terra. Successivamente gli osservatori cominciarono a includere telescopi a raggi X, raggi gamma e particelle ad alta energia; i pi&ugrave; recenti sfruttarono addirittura dei rilevatori di onde gravitazionali per localizzare e misurare le distorsioni nello spazio-tempo e sensori a neutrini per seguire le supernove e altri fenomeni celesti. Queste osservazioni erano di grande interesse per le amministrazioni coloniali che progettavano di tornare un giorno nello spazio e ristabilire il contatto con il pianeta natale. Infine, non si può non citare il contributo fondamentale che, su un pianeta geologicamente attivo come questo, l'osservazione dei vulcani ha dato alla sicurezza e all'espansione delle colonie.</div>
	</div>
</asp:Content>

