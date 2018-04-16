<%@ Page Title="" Language="VB" MasterPageFile="Policies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: ##TITLE##</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">##TITLE##</div>
	<img src="/civilopediabe/images/large/##IMAGE##.png" alt="##TITLE##" class="contentimage" />
	<div class="contentleft">
		##BRANCH##
		##TENET##
		##ERA##
		##PREREQ##
	</div>
	<div class="contentright">
		##HELP##
		##DESC##
	</div>
</asp:Content>

