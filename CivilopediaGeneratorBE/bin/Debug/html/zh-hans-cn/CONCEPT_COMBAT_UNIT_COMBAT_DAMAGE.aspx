<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 战斗伤害</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">战斗伤害</div>
	<div class="contentwide">
		<h2>概要：</h2><div class="infobox">单位最多拥有100点“生命值”。当一个单位在战斗中受到伤害时会损失生命值，生命值为0时，单位即被消灭。受伤的单位比健康的单位弱小，也更容易被消灭。<br />受伤的单位在攻击时也不如满生命值的单位有效率。单位受到的伤害越多，其近程或远程攻击给对手造成的伤害就越低。具体的公式更加复杂，但一般的规则是单位的伤害输出会减少所失去生命值的50%。换句话说，一个损失50点生命值（50%）的单位，其造成的伤害值会减少25%，损失90点生命值（90%）的单位，造成的伤害会减少45%。</div>
	</div>
</asp:Content>

