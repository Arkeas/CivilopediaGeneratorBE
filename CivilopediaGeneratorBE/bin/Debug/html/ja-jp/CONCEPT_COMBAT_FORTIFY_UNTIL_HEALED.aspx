<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 「回復するまで防御」ボタン</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">「回復するまで防御」ボタン</div>
	<div class="contentwide">
		<h2>概要:</h2><div class="infobox">ユニットがダメージを負うと、「回復するまで防御」というアイコンがアクションボタン内に現れます。そのアイコンをクリックすると、体力が全回復するまでその場所で守りを固め続けます。<br /><br />回復する量はユニットの位置によって変わります。<br />都市内: 毎ターン30HP回復。<br />自友領土内: 毎ターン20HP回復。<br />中立あるいは敵領土内: 毎ターン10HP回復。<br /><br />特定のユニットアップグレード、建造物、資源活用施設によってユニット回復量を促進させることもできます。</div>
	</div>
</asp:Content>

