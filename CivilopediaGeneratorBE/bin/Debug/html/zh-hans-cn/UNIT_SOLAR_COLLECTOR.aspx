<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 太阳能采集器</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">太阳能采集器</div>
	<img src="/civilopediabe/images/large/UNIT_SOLAR_COLLECTOR.png" alt="太阳能采集器" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">80 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>轨道效果范围：</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>在轨持续时间：</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_PHOTOSYSTEMS.aspx" onmouseover="return tooltip('光合系统');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PHOTOSYSTEMS.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">轨道单位。单元格<img src="/civilopediabe/images/energy.png" alt="energy" />能量+1。范围内的所有城市都能整体获得+20% <img src="/civilopediabe/images/energy.png" alt="energy" />能量。</div>
		
		<h2>历史</h2><div class="infobox">太阳能采集器是基于先前例如轨道激光炮和瘴气生成器等卫星的设计进行建造的。这种卫星实际上就是一块在轨道空间中工作的太阳能电池板，它可以将太阳能转换为纯能源并传输回地面。尽管这种卫星会造成很高的能量损耗，不过这些损耗的部分和它所能成功收集的能量相比就实在不算什么了。太阳能收集器可以为某一座城市或整片殖民地收集能源。城市可以直接用收集器处接收传输从而提高能量产出，而在整个殖民地的层面，所有控制范围内的领土都可以获得一定量的能量。</div>
	</div>
</asp:Content>

