<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Kampfschaden</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Kampfschaden</div>
	<div class="contentwide">
		<h2>Zusammenfassung:</h2><div class="infobox">Eine vollst&auml;ndig geheilte Einheit hat 100 Trefferpunkte. Wenn eine Einheit w&auml;hrend des Kampfes Schaden nimmt, verliert sie TP, und wenn diese 0 erreichen, wird sie zerstört. Eine Einheit, die Schaden genommen hat, ist schw&auml;cher als eine gesunde Einheit und n&auml;her daran, vernichtet zu werden.<br />Wenn Einheiten Schaden genommen haben, sind sie weniger effektiv als vollst&auml;ndig geheilte Einheiten. Je mehr Schaden eine Einheit genommen hat, desto weniger Schaden verursacht sie - im Nah- oder Fernkampf - bei Feinden. Die genaue Formel ist komplizierter, aber generell gilt: Der Schaden, den eine Einheit verursachen kann, wird um die halbe Prozentzahl der verlorenen Trefferpunkte reduziert. Zwei Beispiele: Eine Einheit verliert 50 Trefferpunkte (50%), was den Schaden, den sie verursachen kann, um 25% reduziert. Eine Einheit, die 90 Trefferpunkte verloren hat, kann um 45% weniger Schaden verursachen.</div>
	</div>
</asp:Content>

