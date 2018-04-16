<%@ Page Title="" Language="VB" MasterPageFile="##MASTER##.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: ##TITLE##</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">##TITLE##</div>
	<div class="contentwidehome">
		<div class="infobox">
			##QUOTE##
		</div>
	</div>
	<div class="contentwidehome">
		<h2>##TITLE##</h2>
		<div class="infobox">
			##DESC##
		</div>
	</div>
</asp:Content>
