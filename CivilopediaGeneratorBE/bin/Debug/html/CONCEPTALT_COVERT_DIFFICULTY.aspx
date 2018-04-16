<%@ Page Title="" Language="VB" MasterPageFile="Covert.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Difficulty</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Difficulty</div>
	<div class="contentwide">
		<h2>Summary:</h2><div class="infobox">Operations have a difficulty value from 0 to 100 which is computed based on the operation type and rank of the agent performing it. The difficulty represents how likely it is the operation will fail.<br /><br />Operations also have a risk value from 0 to 100 which represents the likelihood the agent performing the operation will be detected, identified or killed. The result of the operation is independent of what happens to the agent (for example, an agent could succeed in performing an operation, but be killed in the process). Once begun, an operation either succeeds, fails or is aborted by the player.</div>
	</div>
</asp:Content>

