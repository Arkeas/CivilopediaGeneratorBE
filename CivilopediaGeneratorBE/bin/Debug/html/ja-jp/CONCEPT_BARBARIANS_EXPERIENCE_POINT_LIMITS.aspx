<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 経験値の制限</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">経験値の制限</div>
	<div class="contentwide">
		<h2>概要:</h2><div class="infobox">ユニットは戦闘を生き延びると経験値(XP)を獲得します。経験値を得るために戦闘に勝利したり、相手を破壊する必要はありません。戦闘を生き延びるたびに経験値を得ます。<br />ユニットが得る経験値の量は戦闘の状況によります。基本的には防御するよりも攻撃するほうが、他の攻撃よりも近接攻撃のほうがたくさんの経験値を得ます。いくつかの例:<br />近接攻撃の攻撃側: 5XP<br />近接攻撃の防御側: 4XP<br />遠隔攻撃の攻撃側: 2XP<br />遠隔攻撃の防御側: 2XP<br />エイリアンの制限: 30XPを獲得したユニットは、エイリアン生命体と戦闘してもそれ以上の経験値を得ることはできません。</div>
	</div>
</asp:Content>

