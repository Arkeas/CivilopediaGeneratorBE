<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 轨道增产器</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">轨道增产器</div>
	<img src="/civilopediabe/images/large/UNIT_ORBITAL_FABRICATOR.png" alt="轨道增产器" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">130 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>轨道效果范围：</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>在轨持续时间：</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>资源需求：</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('钛');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_GEOSCAPING.aspx" onmouseover="return tooltip('地质改造学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_GEOSCAPING.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">轨道单位。单元格<img src="/civilopediabe/images/production.png" alt="production" />生产力+1。在其生命周期内产生1到2个新战略资源至未改良的单元格。</div>
		
		<h2>历史</h2><div class="infobox">轨道增产器是太阳能采集器和气象控制器互相交错之后的产物。它同时运用太阳能和电磁能来制造高精准的局部行星压强。这种压强会增加指定资源的品质，给予殖民地内每个单元格一点生产力。与气象控制器相似，在运作过程中它的附加作用还能使单元格生长出战略资源。</div>
	</div>
</asp:Content>

