<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 地熱井</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">地熱井</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_GEOTHERMAL_WELL.png" alt="地熱井" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>生産:</h2><div class="infobox"><img src="/civilopediabe/images/energy.png" alt="energy" /> エネルギー: +3 (<img src="/civilopediabe/images/geothermal_energy.png" alt="geothermal energy" /> 地熱から)</div>
		
		
		<h2>活用可能な資源:</h2><div class="infobox"><a href="RESOURCE_GEOTHERMAL_ENERGY.aspx" onmouseover="return tooltip('地熱');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_GEOTHERMAL_ENERGY.png" /></a></div>
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_GEOPHYSICS.aspx" onmouseover="return tooltip('地質物理学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_GEOPHYSICS.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">コロニーでは様々なタイプの井戸を用いて、この新たな星の天然資源を活用している。石油もまだ採れるが、人類の産業活動の重要な一部を担っているのは、陸上採掘に必須となる、新しい資源の数々である。陸地に井戸を建設すると、極めて魅力的な地熱資源やゼノマス資源が手に入るようになる。</div>
	</div>
</asp:Content>

