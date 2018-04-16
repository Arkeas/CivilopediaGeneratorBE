<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 石油坑</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">石油坑</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PETROL_WELL.png" alt="石油坑" class="contentimage" />
	<div class="contentleft">
		
		<h2>健康: </h2><div class="infobox">1 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>生産:</h2><div class="infobox"><img src="/civilopediabe/images/energy.png" alt="energy" /> エネルギー: +2 (<img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> 石油から)<br /><img src="/civilopediabe/images/production.png" alt="production" /> 生産: +1 (<img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> 石油から)</div>
		
		
		<h2>活用可能な資源:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('化学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">コロニーでは様々なタイプの井戸を用いて、この新たな星の天然資源を活用している。石油もまだ採れるが、人類の産業活動の重要な一部を担っているのは、陸上採掘に必須となる、新しい資源の数々である。陸地に井戸を建設すると、極めて魅力的な地熱資源やゼノマス資源が手に入るようになる。</div>
	</div>
</asp:Content>

