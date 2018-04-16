<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 黄金</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">黄金</div>
	<img src="/civilopediabe/images/large/RESOURCE_GOLD.png" alt="黄金" class="contentimage" />
	<div class="contentleft">
		<h2>产出：</h2><div class="infobox">{1_num}点<img src="/civilopediabe/images/culture.png" alt="culture" />文化值</div>
		
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('丘陵');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
		<h2>修建者：</h2><div class="infobox"><a href="IMPROVEMENT_MINE.aspx" onmouseover="return tooltip('矿场');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_MINE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>历史</h2><div class="infobox">原子量：196.96。原子序数：79。在旧地球上，黄金由于其稀有度（低于0.005百万分之一）、光泽度、可延展性、和超高的耐久性而十分珍贵。而在大灾变发生的数个世纪前，黄金一直是标准的国家通货，也一直被人类文明所交易、囤积、以及互相掠夺。不过在这颗星球上，黄金在热液脉中十分常见，其使用也主要出现在工业和技术领域，只有少数用于个人珠宝中。黄金具有优秀的导电性，而且抗腐蚀性也不错，十分适用于潮湿或高含盐度的环境中。这种金属可以用在计算机、通讯设备、半导体、航天器、以及绝大多数的引擎中。黄金对于先进战斗服、装甲车辆、海军舰船、以及其他军事装备的有效运作也十分重要。对这里充足的黄金资源进行发掘和提炼工序比较简单，即便是民用开矿人员也可以进行。虽然离家园如此之远，人类和这座贵金属的关系却依然亲密。</div>
	</div>
</asp:Content>

