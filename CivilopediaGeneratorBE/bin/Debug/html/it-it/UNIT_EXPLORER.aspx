<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Esploratore</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Esploratore</div>
	<img src="/civilopediabe/images/large/UNIT_EXPLORER.png" alt="Esploratore" class="contentimage" />
	<div class="contentleft">
		<h2>Costo:</h2><div class="infobox">40 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Combattimento:</h2><div class="infobox">6 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>Movimento:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		<h2>Tecnologie propedeutiche:</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('Abitazioni');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">Unit&agrave; da esplorazione. Ideale per determinare la conformazione del territorio, la posizione delle forze nemiche e l'attivit&agrave; aliena. La sua forza limitata gli permette di difendersi, ma non &egrave; adatto al combattimento.</div>
		<h2>Strategia:</h2><div class="infobox">Quest'unit&agrave; esplora il territorio e può costruire Spedizioni nelle caselle che contengono Manufatti.</div>
		<h2>Storia:</h2><div class="infobox">Gli Esploratori agiscono come unit&agrave; di ricognizione per la propria colonia. Spostandosi rapidamente, rimuovono facilmente la nebbia di guerra ampliando le conoscenze del loro popolo. Tuttavia, mentre gli Scout si occupano solo di ampliare le conoscenze del presente, gli Esploratori sono dediti a indagare anche il passato. Di fatto, sono degli archeologi, abili negli scavi, tanto da poter condurre ricerche negli Insediamenti abbandonati, nelle Rovine dei progenitori, negli Scheletri alieni e persino nei Satelliti schiantati, fornendo ulteriori bonus alla propria colonia.</div>
	</div>
</asp:Content>

