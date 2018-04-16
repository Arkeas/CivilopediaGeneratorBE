<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 複数ターンに跨る移動</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">複数ターンに跨る移動</div>
	<div class="contentwide">
		<h2>概要:</h2><div class="infobox">指定した場所へユニットを移動させるのに複数のターンが必要である場合、自動的に最短ルートを探して目的地までの移動を開始します。指定された場所に辿り着くか、新しい指令を与えるまで、ユニットは毎ターン移動を続けます。<br /><br />ユニットが指定した場所にたどり着けないと判断した場合、ユニットは停止して新しい指令を待ちます(たとえば、指定したタイルが外洋を挟んだ向う側にあることが判明して、なおかつそのユニットが出航できない場合や、指定した場所に他のユニットが既にいた場合など)。</div>
	</div>
</asp:Content>

