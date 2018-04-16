<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 戦闘によるダメージ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">戦闘によるダメージ</div>
	<div class="contentwide">
		<h2>概要:</h2><div class="infobox">ユニットのヒットポイントは最大で100あります。戦闘で攻撃を受けると減っていき、0になってしまうと破壊されてしまいます。ダメージを受けたユニットは戦闘力が弱り、破壊されやすくなります。<br />ダメージを受けたユニットは、無傷のユニットよりも攻撃が弱くなります。ダメージを受けるほど、相手に与えるダメージは弱くなります(近接攻撃、遠隔攻撃ともに)。実際の計算式はもっと複雑ですが、基本的なユニット攻撃力算出は「元の戦闘力-失ったヒットポイントの半分(%)」です。つまり、50HPを失ったユニットは「元の戦闘力-25%」のダメージしか与えられず、90HPを失ったユニットは「元の戦闘力-45%」のダメージしか与えられない、ということです。</div>
	</div>
</asp:Content>

