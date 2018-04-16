<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 经验点限制</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">经验点限制</div>
	<div class="contentwide">
		<h2>概要：</h2><div class="infobox">单位每存活过一轮战斗就会获得经验。该单位不需要赢得战斗或者消灭敌人才能获得经验；该单位在战斗中活过的每一回合经验都会积累。<br /><br />单位获得的经验量取决于战斗的具体情况。通常来说，单位在攻击时比防御时得到的经验多，发动近程战斗时比发动其他类型战斗时得到的经验多。这里是一些例子：<br />当近战单位发起进攻：5点经验值<br />当防守进攻单位:4点经验<br />当远程单位发起进攻：2点经验<br />受到远程攻击的单位：2点经验<br />异星生物经验限制：已获得30点经验的单位就不能再通过与异星生物作战获得更多经验了。</div>
	</div>
</asp:Content>

