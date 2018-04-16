<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 移動ポイントの消費</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">移動ポイントの消費</div>
	<div class="contentwide">
		<h2>概要:</h2><div class="infobox">ユニットはタイルを移動する事で移動ポイント(MP)を消費します。タイルの地形によって、移動ポイントの消費量は変化します。移動元のタイルは関係なく、移動ポイントの消費に影響するのは移動先のタイル種だけです。<br /><br />基本的に草原や平原のような開けた土地は移動ポイントを1消費し、森林や丘陵のような土地に入ると移動ポイントを2消費します。河川を渡ると移動ポイントをすべて消費します。<br /><br />ユニットに移動ポイントが残っていれば、必ず1タイルは移動できます。そのタイルの移動コストがいくら高くても、ユニットに移動ポイントが残されている限りはそのタイルへ入ることができます。移動ポイントをすべて消費したユニットは、その場所で次のターンを待つことになります。</div>
	</div>
</asp:Content>

