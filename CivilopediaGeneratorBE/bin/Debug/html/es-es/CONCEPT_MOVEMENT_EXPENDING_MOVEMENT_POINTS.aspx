<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Gastar puntos de movimiento</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Gastar puntos de movimiento</div>
	<div class="contentwide">
		<h2>Resumen:</h2><div class="infobox">Las unidades gastan PM por entrar en las casillas. El terreno de la casilla en la que la unidad est&eacute; entrando es lo que determina el coste en PM de moverse. No cuesta nada salir de la casilla donde se est&eacute;. El coste en PM se calcula solo por la casilla a la que se quiere entrar.<br /><br />Por lo general, cuesta 1 PM entrar en terreno abierto (como la Pradera y la Llanura) y 2 adentrarse en Bosque o Colina. Adem&aacute;s, cruzar un R&iacute;o le cuesta a una unidad todos sus PM.<br /><br />Una unidad siempre puede moverse una casilla si le queda alg&uacute;n PM. No importa lo "caro" que resulte el movimiento: mientras a la unidad le queden PM, podr&aacute; entrar. Cuando la unidad haya gastado todos los PM, dejar&aacute; de moverse hasta el siguiente turno.</div>
	</div>
</asp:Content>

