<%@ Page Title="" Language="VB" MasterPageFile="Wonders.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: ##TITLE##</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">##TITLE##</div>
	<img src="/civilopediabe/images/large/##TYPE##.png" alt="##TITLE##" class="contentimage" />
	<div class="contentleft">
		##COST##
		##MAINTENANCE##
		##HAPPINESS##
		##HEALTH##
		##CULTURE##
		##DEFENSE##
		##FOOD##
        ##FAITH##
		##GOLD##
		##ENERGY##
		##SCIENCE##
		##PRODUCTION##
		##CIVILIZATION##
		##RESOURCES##
		##GREATPEOPLE##
		##PREREQ##
		##REQUIRED##
		##REPLACES##
		##GREATWORKS##
	</div>
	<div class="contentright">
		##HELP##
		##QUOTE##
		##STRATEGY##
		##DESC##
	</div>
</asp:Content>

