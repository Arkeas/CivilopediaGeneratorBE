<%@ Page Title="" Language="VB" MasterPageFile="Civilizations.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: ##TITLE##</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">##TITLE##</div>
	<img src="/civilopediabe/images/large/##TYPE##.png" alt="##TITLE##" class="contentimage" />
	<div class="contentleft">
		##TITLES##
		##CIVILIZATION##
	</div>
	<div class="contentright">
		<div class="infobox">##SUBTITLE##</div>
		##TRAIT##
		##DESC##
	</div>
</asp:Content>

