<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 油井</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">油井</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PETROL_WELL.png" alt="油井" class="contentimage" />
	<div class="contentleft">
		
		<h2>健康度：</h2><div class="infobox">1 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>产出：</h2><div class="infobox"><img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> 石油提供+2 <img src="/civilopediabe/images/energy.png" alt="energy" /> 能量<br /><img src="/civilopediabe/images/petroleum.png" alt="petroleum" /> 石油提供+1 <img src="/civilopediabe/images/production.png" alt="production" /> 生产力</div>
		
		
		<h2>获得资源：</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('化学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">通过造井的应用，殖民地可以驾驭新世界里自然生成的能源。石油依然存在的同时，对新资源的陆地钻探也是人类工业中最重要的一个部分。当修建在陆地上时，矿井也可以为殖民地获取地热和兹诺物质资源。</div>
	</div>
</asp:Content>

