<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 消耗移動力值</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">消耗移動力值</div>
	<div class="contentwide">
		<h2>摘要：</h2><div class="infobox">單位消耗移動力值以進入單元格。單位進入的單元格地形決定其所需消耗的移動力值。移動力值只在進入單元格時消耗，則離開當前單元格無需消耗移動力值。<br /><br />一般來說，進入像草原及平原之類的開闊地形只消耗 1 點移動力值；而森林和丘陵則需要消耗 2 點移動力值。跨河則將消耗所有移動力值。<br /><br />只要還有剩餘任何移動力值，單位都可以移動一個單元格。無論進入該單元格需要消耗多少移動力值，只要該單位還有剩餘的移動力值都可進入。當單位移動力值耗盡時將停止移動，直到下一回合為止。</div>
	</div>
</asp:Content>

