<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 打ち上げと配置</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">打ち上げと配置</div>
	<div class="contentwide">
		<h2>概要:</h2><div class="infobox">軌道ユニットは、必ず、都市タイルから打ち上げ範囲にあるタイルへと打ち上げられます。打ち上げ後、軌道ユニットは軌道レイヤーマップへ配置されます。既に陸上ユニットまたは海上ユニットが含まれるタイルへの打ち上げは可能ですが、他の軌道ユニットを含むタイルへは打ち上げられません。<br /><br />打ち上げ範囲は、自コロニーの都市周辺部など、特定のエリアに自動的に設定されます。打ち上げ範囲は、テクノロジー、遺産、美徳、建造物、ステーション契約などによって追加することが可能です。<br /><br />軌道レイヤーでは、軌道ユニット同士が同じタイルを占拠することはできません。つまり、1タイルに配置できる軌道ユニットは1基のみというルールが適用されることになります。また、軌道ユニットの"スカート"(効果範囲)は重複できません。</div>
	</div>
</asp:Content>

