<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Spendere punti movimento</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Spendere punti movimento</div>
	<div class="contentwide">
		<h2>Riepilogo:</h2><div class="infobox">Le unit&agrave; spendono PM entrando nelle caselle. Il costo di una mossa &egrave; determinato dal tipo di terreno in cui un'unit&agrave; sta entrando. Ricorda che lasciare una casella non costa nulla: il consumo dei PM dipende solo dalla casella in cui si sta entrando.<br /><br />In genere un terreno aperto come Pianura o Prateria costa 1 PM, mentre Foresta e Collina costano 2 punti. Inoltre un'unit&agrave; deve spendere tutti i PM residui per attraversare un fiume.<br /><br />Un'unit&agrave; che ha almeno 1 PM residuo può sempre muoversi di una sola casella: non importa quanti punti movimento sono richiesti, se l'unit&agrave; ne ha almeno uno, può entrarvi. Una volta esauriti i PM, l'unit&agrave; deve fermarsi fino al turno successivo.</div>
	</div>
</asp:Content>

