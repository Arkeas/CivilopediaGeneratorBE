<%@ Page Title="" Language="VB" MasterPageFile="Promotions.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: ##TITLE##</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">##TITLE##</div>
	<img src="/civilopediabe/images/large/##IMAGE##.png" alt="##TITLE##" class="contentimage" />
	<div class="contentleft">
		##PREREQ##
	</div>
	<div class="contentright">
		##HELP##
	</div>
</asp:Content>

