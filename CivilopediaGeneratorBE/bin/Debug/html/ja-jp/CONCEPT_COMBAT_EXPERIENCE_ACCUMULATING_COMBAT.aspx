<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 戦闘による経験値の獲得</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">戦闘による経験値の獲得</div>
	<div class="contentwide">
		<h2>概要:</h2><div class="infobox">経験値(XP)は戦闘で生き残ることにより獲得することができます。経験値を得るには、勝利を挙げたり敵を倒したりする必要はなく、1回1回の戦闘を生き抜く度に経験値が加算されていきます。<br /><br />獲得できる経験値の量は戦いの状況によって変化します。通常は防衛時よりも攻撃時のほうが経験値を多くもらえ、他の戦闘より近接攻撃時のほうが多くの経験値を獲得できます。以下がその例です(完全なものについては「図表」の項目を参照):<br />近接攻撃ユニットの攻撃: 5XP<br />近接攻撃ユニットに対する防衛: 4XP<br />遠隔攻撃ユニットの攻撃: 2XP<br />遠隔攻撃ユニットに対する防御: 2XP<br />エイリアンとの戦闘に関する制限: 30XPを獲得しているユニットは、エイリアン生命体と戦っても経験値を得ることはできません。</div>
	</div>
</asp:Content>

