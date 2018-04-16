<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 戦闘情報画面</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">戦闘情報画面</div>
	<div class="contentwide">
		<h2>概要:</h2><div class="infobox">自ユニットの1つがアクティブになっている状態で、カーソルを敵のユニット上に置くと、「戦闘情報画面」が表示されます。これを見ることで、その2つのユニットが戦った時の結果が大体分かるようになっています。この画面では、左側に自ユニットの修正後戦闘力が表示され、右側に敵のものが表示されます。情報画面の一番上にはこの戦闘の結果予想が表示され、中央部のバーにはこの戦闘が実行された時にお互いが負うであろうダメージ量が表示されます。</div>
	</div>
</asp:Content>

