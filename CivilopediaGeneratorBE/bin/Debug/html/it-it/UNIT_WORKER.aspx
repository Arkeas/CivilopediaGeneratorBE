<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Lavoratore</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Lavoratore</div>
	<img src="/civilopediabe/images/large/UNIT_WORKER.png" alt="Lavoratore" class="contentimage" />
	<div class="contentleft">
		<h2>Costo:</h2><div class="infobox">60 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		<h2>Movimento:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		<h2>Tecnologie propedeutiche:</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('Abitazioni');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">Unit&agrave; civile. Costruisce miglioramenti sulla terra e sull'acqua, aumentando così la resa delle caselle sfruttate dalla popolazione di una citt&agrave;.</div>
		<h2>Strategia:</h2><div class="infobox">Quest'unit&agrave; può costruire strade, magnetovie e miglioramenti del territorio come fattorie e miniere. Non può difendersi, perciò quando si trova in territorio pericoloso &egrave; meglio proteggerla con un'unit&agrave; militare.</div>
		<h2>Storia:</h2><div class="infobox">Se i coloni rappresentano il cuore di una colonia, allora i Lavoratori sono il suo sangue. I Lavoratori permettono alla colonia di sfruttare il territorio costruendo miglioramenti o rimuovendo il miasma. Man mano che la colonia progredisce tecnologicamente, anche i Lavoratori si evolvono, acquisendo col tempo la capacit&agrave; di creare il miasma e di costruire il miglioramento Habitat terrestre.</div>
	</div>
</asp:Content>

