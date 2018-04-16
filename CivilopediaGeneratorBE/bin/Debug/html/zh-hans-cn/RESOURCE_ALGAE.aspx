<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 海藻</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">海藻</div>
	<img src="/civilopediabe/images/large/RESOURCE_ALGAE.png" alt="海藻" class="contentimage" />
	<div class="contentleft">
		<h2>产出：</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食物</div>
		
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_COAST.aspx" onmouseover="return tooltip('海岸');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_COAST.png" /></a></div>
		<h2>修建者：</h2><div class="infobox"><a href="IMPROVEMENT_WORK_BARGE.aspx" onmouseover="return tooltip('工作驳船');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_WORK_BARGE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>历史</h2><div class="infobox">在地球上，海藻是一种简单的、自给自足的真核细胞生物，可以在任何地域找到。这种生物可以是小到单细胞的硅藻，也可以是大到60米长的巨藻。在地球上，因为几个世纪以来大灾变造成的辐射尘污染，海藻的多样性和数量都已经大幅减少了。而这颗星球上的海藻数量充足、种类繁多，在从浅水到100米的深海里都有生长。殖民者在沿海地区建立聚居地后立刻开始收集海藻这座资源，他们尤其钟爱紫菜和海带。除了可以用作优质食物来源之外，海藻还可以用来制造肥料、染料、琼脂、和海藻酸盐。泛亚合作的殖民地科学家们还开发出将这颗星球上的海藻用作可再生生物燃料的技术。这种技术的研究在两个世纪前在地球上曾经进行过，不过当地球海藻数量下降之后就因为性价比太高而遭到搁置。不管怎样，含有大量不饱和脂肪酸的海藻依旧主要是被当作食物。随着许多人将他们的厨艺和菜肴带来这座新的星球以后，海藻在社会中开始变得越来越重要。</div>
	</div>
</asp:Content>

