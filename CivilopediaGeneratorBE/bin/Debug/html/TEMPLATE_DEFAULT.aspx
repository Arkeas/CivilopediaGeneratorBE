<%@ Page Title="" Language="VB" MasterPageFile="Home.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">##TITLE##</div>
	<div class="contentwide">
		<div class="infobox">
			##QUOTE##
		</div>
	</div>
	<div class="contentwide">
		<h2>##TITLE2##</h2>
		<div class="infobox">
			##WELCOME##
		</div>
		<h2>Recent Changes</h2>
		<div class="infobox">
			##CHANGES##
		</div>
	</div>
</asp:Content>

