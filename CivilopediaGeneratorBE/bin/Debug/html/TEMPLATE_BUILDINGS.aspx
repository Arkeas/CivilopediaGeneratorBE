<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

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
		##FOOD##
		##ENERGY##
		##SCIENCE##
		##PRODUCTION##
        ##FAITH##
        ##DEFENSE##
		##CIVILIZATION##
		##RESOURCES##
        ##LOCALRESOURCES##
		##GREATPEOPLE##
		##PREREQ##
		##REQUIRED##
		##SPECIALISTS##
		##GREATWORKS##
		##REPLACES##
		##AFFINITY##
	</div>
	<div class="contentright">
		##HELP##
		##STRATEGY##
		##DESC##
	</div>
</asp:Content>

