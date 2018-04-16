<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 化学</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">化学</div>
	<img src="/civilopediabe/images/large/TECH_CHEMISTRY.png" alt="化学" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>已解锁建筑：</h2><div class="infobox"><a href="BUILDING_LABORATORY.aspx" onmouseover="return tooltip('实验室');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_LABORATORY.png" /></a><a href="BUILDING_RECYCLER.aspx" onmouseover="return tooltip('回收站');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RECYCLER.png" /></a></div>
        
		<h2>已勘探资源：</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>解锁工人命令：</h2><div class="infobox"><a href="IMPROVEMENT_PETROL_WELL.aspx" onmouseover="return tooltip('建造油井');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PETROL_WELL.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">允许建造建筑<span class="color_highlight_building">实验室</span>和<span class="color_highlight_building">回收站</span>。允许工人建造<span class="color_highlight_improvement">油井</span>单元格改良设施。在地图上显示<span class"color_highlight_resource">石油</span>资源。</div>
		
		<h2>名言：</h2><div class="infobox">“价值四十亿年旧世界的资源，仅有小部分人可以分享。我们要在这里创造财富！”<br />——乌塔马，《命定昌隆》</div>
		<h2>历史</h2><div class="infobox">从古时的培根、波义耳和梅奥开始把炼金术重塑为科学学科，使得元素的研究严谨有序起来时，化学便成为了最重要的研究领域之一。随着化学定律的制定和对物质本质的理解，化学也成为了工业和科学探索的重要领域。当人类进军太空，新的分支出现了，如天体化学、超分子化学和有机金属化学。新行星带来了新发现，比如菲拉瑟晶矿和浮石，这些发现都将化学研究带向了意料之外的境地。在应用科学中，的确可以说人类能成功殖民太空，化学最为重要。</div>
	</div>
</asp:Content>

