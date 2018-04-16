<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 近接戦闘の結果</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">近接戦闘の結果</div>
	<div class="contentwide">
		<h2>概要:</h2><div class="infobox">近接攻撃を行うと、そのユニットの移動ポイントはすべて使い切ります。攻撃を実行した時点でそのユニットのターンは終わります。<br />近接攻撃は攻撃側、防御側双方にいくらかのダメージをもたらし、現在のヒットポイントから削除されます。ヒットポイントが0になると、そのユニットは破壊されます。防御側が破壊された場合は、防御側が位置していたタイルに攻撃側が自動で移動しますが、攻撃側が破壊されても防御側は移動しません。</div>
	</div>
</asp:Content>

