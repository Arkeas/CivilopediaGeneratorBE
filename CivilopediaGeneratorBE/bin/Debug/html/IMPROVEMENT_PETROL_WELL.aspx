<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Petroleum Well</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Petroleum Well</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PETROL_WELL.png" alt="Petroleum Well" class="contentimage" />
	<div class="contentleft">
		<h2>Maintenance:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		<h2>Health:</h2><div class="infobox">1 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>Yields:</h2><div class="infobox">+4 <img src="/civilopediabe/images/energy.png" alt="energy" /> Energy from <img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> Petroleum.<br />+1 <img src="/civilopediabe/images/production.png" alt="production" /> Production from <img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> Petroleum.</div>
		
		
		<h2>Improves Resources:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('Petroleum');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>Prerequisite Techs:</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('Chemistry');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Game Info:</h2><div class="infobox">Through the use of Wells, colonies can harness the naturally produced Energy of their new world. While Petroleum still exists, it is the new resources which ensure dry-land drilling remains an important part of human industry. When built on dry-land, Wells can provide access to much needed Geothermal and Xenomass resources.</div>
	</div>
</asp:Content>

