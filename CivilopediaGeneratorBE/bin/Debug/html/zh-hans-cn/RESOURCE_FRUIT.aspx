<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 水果</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">水果</div>
	<img src="/civilopediabe/images/large/RESOURCE_FRUIT.png" alt="水果" class="contentimage" />
	<div class="contentleft">
		<h2>产出：</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食物</div>
		
		<h2>相容地形：</h2><div class="infobox"><a href="FEATURE_FOREST.aspx" onmouseover="return tooltip('森林');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_FOREST.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a></div>
		<h2>修建者：</h2><div class="infobox"><a href="IMPROVEMENT_PLANTATION.aspx" onmouseover="return tooltip('种植园');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PLANTATION.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>历史</h2><div class="infobox">这颗星球的年龄大致等同于地球上的石炭纪，只有着极少数的被子植物品种，因此，这里的水果种类十分稀少。最初从非洲人民联盟、太平洋联邦、以及南美洲国家组织前来的殖民者带来了一些生命力极其顽强的热带水果作物。其中一些品种在新的环境里存活了下来，并在精心的照料中茁壮的生长起来，其中包括榴莲、阿开木、木菠萝、番荔枝、美果榄、酸角、以及面包果等等。半个世纪以来，这些水果作物在新的星球上疯狂的散播开来，在与本地被子植物品种的竞争中取得了胜利，并成为了殖民地膳食中的主要部分。一些本地的仙人掌品种也可以产出类似于仙人掌果的果实，其营养价值已经得到证实。另外，一些本地的真菌也可以产出可食用的子实体，也可以作为水果食品。最后，一种地球上已经灭绝的科达属植物的近亲品种也可以产出和紫杉果类似的浆果。而石炭纪的鳞木目石松类植物也可以产出可口的球果。无论是采集的野生品种还是由殖民地农民大量耕种的作物，这些多种多样的水果补充了殖民者们的膳食，为人们提供可以用来维持生命的矿物质、维生素、和纤维素。</div>
	</div>
</asp:Content>

