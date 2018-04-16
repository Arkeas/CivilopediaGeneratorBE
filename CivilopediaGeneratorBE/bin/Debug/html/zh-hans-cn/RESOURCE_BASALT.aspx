<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 玄武岩</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">玄武岩</div>
	<img src="/civilopediabe/images/large/RESOURCE_BASALT.png" alt="玄武岩" class="contentimage" />
	<div class="contentleft">
		<h2>产出：</h2><div class="infobox">1</span><img src="/civilopediabe/images/production.png" alt="production" />生产力</div>
		
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('丘陵');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('冻土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a></div>
		<h2>修建者：</h2><div class="infobox"><a href="IMPROVEMENT_QUARRY.aspx" onmouseover="return tooltip('采石场');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_QUARRY.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>历史</h2><div class="infobox">星球表面的岩浆在快速冷却时会生成一种常见的隐晶火成岩，也就是玄武岩。它出现在地球、火星、金星、木卫一、月球、以及甚至是小行星灶神星上。这颗星球上的玄武岩主要是由以斜长岩形式出现的长石组成，也同样包含有高比例的石英和硅土，同时也能检测出镁和纳的痕迹。由于这颗星球较为年轻，玄武岩的储量十分充足，采掘非常容易，因此这种石料被广泛的用作各种用途。除了可以用作廉价的建筑和铺路材料之外，玄武岩也可以通过加热到高温（至少1600摄氏度）之后进行挤压的方式制成优质的热绝缘体“岩棉”。殖民者们也可以将岩棉用作渗滤装置、隔音材料、塑料制造、以及从地球带来的水培苗的发芽。虽然长期暴露在岩棉环境中会导致健康问题，必须要采取预防措施，不过这种危险在其实用性面前根本不算什么。</div>
	</div>
</asp:Content>

