<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: スタック制限</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">スタック制限</div>
	<div class="contentwide">
		<h2>概要:</h2><div class="infobox">同一のタイルでターンを終了できるのは1体の戦闘ユニットだけで、同一のタイルでターンを終了できるのは1体の非戦闘ユニットだけです。ただし、1体の戦闘ユニットと1体の非戦闘ユニットであれば、同一のタイルに"スタック"させたままターンを終了させることができます。通過するのに十分な移動ポイントが残っていれば、他のユニットがいるタイルを通過することはできますが、同じ種類のユニットがいるタイル上で移動を終了させることはできません。このルールの例外は航空ユニットです。同一のタイルに3体の航空ユニットを配置できます。</div>
	</div>
</asp:Content>

