<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 戰鬥傷害</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">戰鬥傷害</div>
	<div class="contentwide">
		<h2>摘要：</h2><div class="infobox">一支無損的單位有 100 點「生命值」。當單位在戰鬥中受損時，其生命值就會降低，如果其生命值降至 0，則該單位即被消滅。相較於無損的單位，受損的單位更弱並更有可能被消滅。<br />相較於完全回復的單位，受損的單位在攻擊時較沒有效率。單位受損的程度越大，其攻擊對手的損害越少——無論是近戰或遠程。實際的公式比這更為複雜，但一般的規則是，單位的損害輸出會減少損失之生命值百分比的一半。換句話說，已損失 50 點生命值（50%）的單位，可造成的損害減少了 25% 的量，而本身已損失 90 點生命值（90%）的單位，所造成的損害減少了 45%。</div>
	</div>
</asp:Content>

