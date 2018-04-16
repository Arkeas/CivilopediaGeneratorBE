<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 纤维</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">纤维</div>
	<img src="/civilopediabe/images/large/RESOURCE_FIBER.png" alt="纤维" class="contentimage" />
	<div class="contentleft">
		<h2>产出：</h2><div class="infobox">1</span><img src="/civilopediabe/images/production.png" alt="production" />生产力</div>
		
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('沙漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a></div>
		<h2>修建者：</h2><div class="infobox"><a href="IMPROVEMENT_PLANTATION.aspx" onmouseover="return tooltip('种植园');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PLANTATION.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>历史</h2><div class="infobox">任何有柔韧性、丝状的、可以纺成纱或者进行编织的线状材料都可以被称为纤维。目前有40种已知的纤维材料已经应用于商业中。纤维可以用动物或矿物产品制成，但是绝大多数纤维还是来自于本地或外星球的植物。动物纤维主要由蛋白质链构成，而植物纤维主要包含纤维素。这颗星球上只有少数动物能产出可供使用的纤维，但是殖民者们带来了多种可以提供纤维的兽类，比如绵羊、美洲驼、骆马、兔子、以及黑貂。同样，由于本地植物都是异形孢子植物，殖民地的植物纤维主要来自于亚麻、大麻、木棉等，这些植物通过精心栽培也可以在当地的土壤环境中茁壮生长。不过，一种狼甲虫的近亲生物可以大量产出一种类似蜘蛛丝的材料，可以进行收集和纺织。另外，从一些星球矿物中也可以提取出一种类似于石棉的材料。一些由地球带来的纤维作物现在已经被归类为外来入侵物种，这些作物疯狂的播种，迅速的在某些地区扩散。于是各种类型纤维的生产开始蓬勃发展，形成了一个利润不菲的产业。另外，殖民地工厂也生产着各种锦纶、氨纶、以及亚旦尼尔微纤维，并用于工业和科研用途中。</div>
	</div>
</asp:Content>

