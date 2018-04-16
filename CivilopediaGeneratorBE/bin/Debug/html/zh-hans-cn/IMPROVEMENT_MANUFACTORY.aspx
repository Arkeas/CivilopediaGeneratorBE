<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 制造工厂</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">制造工厂</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MANUFACTORY.png" alt="制造工厂" class="contentimage" />
	<div class="contentleft">
		<h2>维护费用：</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		<h2>健康度：</h2><div class="infobox">2 <img src="/civilopediabe/images/unhealth.png" alt="unhealth" /></div>
		<h2>产出：</h2><div class="infobox">3</span><img src="/civilopediabe/images/production.png" alt="production" />生产力</div>
		
		
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('机器人学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('冻土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('雪地');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">虽然人类被迫迁徙到一颗未知的星球上重新来过，但这这苦难并没有消磨了人们对工业的狂热。正是这样，制造工厂成为了地外殖民地的标准工业设施。这个庞大的建筑可以提供多种工业功能，例如冶金、精炼、以及装配。通过将所有工业活动集中在一座制造工厂内，殖民地可以充分利用土地资源，避免困扰旧地球城市的城市化膨胀问题。</div>
	</div>
</asp:Content>

