﻿<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Боевые повреждения</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Боевые повреждения</div>
	<div class="contentwide">
		<h2>Краткий обзор:</h2><div class="infobox">Максимальное число очков здоровья юнита равно 100. При  получении юнитом повреждений в бою число очков снижается. Когда оно достигает нуля, юнит гибнет. Поврежденный юнит слабее здорового, и он ближе к гибели.<br />Атаки поврежденного юнита не такие эффективные, как атаки полностью здорового. Чем сильнее поврежден юнит, тем менее эффективной будет его атака, как в ближнем, так и в дальнем бою. Фактическая формула довольно сложна, но, как правило, эффективность наносимого урона снижается примерно на 50% от потерянных очков здоровья. Другими словами, если юнит потерял 50 очков здоровья (50%), то эффективность наносимого им урона снижается на 25%, а если юнит потерял 90 очков здоровья (90%), его боевая мощь снижается на 45%.</div>
	</div>
</asp:Content>

