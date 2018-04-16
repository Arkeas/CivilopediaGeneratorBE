<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Pionieristica</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Pionieristica</div>
	<img src="/civilopediabe/images/large/TECH_PIONEERING.png" alt="Pionieristica" class="contentimage" />
	<div class="contentleft">
		<h2>Costo:</h2><div class="infobox">80 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>Unit&agrave; sbloccate:</h2><div class="infobox"><a href="UNIT_SETTLER.aspx" onmouseover="return tooltip('Colono');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_SETTLER.png" /></a><a href="UNIT_TRADER.aspx" onmouseover="return tooltip('Convoglio commerciale');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_TRADER.png" /></a><a href="UNIT_SEA_TRADER.aspx" onmouseover="return tooltip('Vascello commerciale');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_SEA_TRADER.png" /></a></div>
		<h2>Edifici sbloccati:</h2><div class="infobox"><a href="BUILDING_DEPOT.aspx" onmouseover="return tooltip('Deposito');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_DEPOT.png" /></a></div>
        
		
		
		
	</div>	
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">Permette la costruzione dell'edificio <span class="color_highlight_building">Deposito</span> e delle unit&agrave; <span class="color_highlight_unit">Colono</span>, <span class="color_highlight_unit">Convoglio commerciale</span> e <span class="color_highlight_unit">Vascello commerciale</span>.</div>
		
		<h2>Citazione:</h2><div class="infobox">"L'universo &egrave; guidato dal progresso o dall'entropia. Noi scegliamo il progresso!"<br />- Vadim Kozlov, Assiomi dai verbali del Direttorio Centrale</div>
		<h2>Storia:</h2><div class="infobox">Si immagina, basandosi sulle storie romanzate dei pionieri che conquistarono il continente nordamericano migrando verso ovest, che dopo l'insediamento iniziale sul nuovo pianeta piccoli gruppi di esploratori si spingessero nell'ignoto per creare piccoli avamposti, rivendicando territori per la colonia in espansione. Utilizzando costruzioni automatizzate e prefabbricati, questi pionieri volevano impossessarsi di risorse, terre agricole e posizioni strategiche per una colonia che dalla Terra sembrava un investimento valido e dagli ampi profitti. Questi avamposti si trasformavano inevitabilmente in vere e proprie cittadine grazie all'aggiunta di stabilimenti industriali, edifici amministrativi e centri di smistamento.</div>
	</div>
</asp:Content>

