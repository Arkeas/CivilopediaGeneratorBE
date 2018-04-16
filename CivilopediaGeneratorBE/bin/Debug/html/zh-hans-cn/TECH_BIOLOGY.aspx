<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 生物学</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">生物学</div>
	<img src="/civilopediabe/images/large/TECH_BIOLOGY.png" alt="生物学" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">770 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>已解锁建筑：</h2><div class="infobox"><a href="BUILDING_BIOFUEL_PLANT.aspx" onmouseover="return tooltip('生物燃料工厂');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_BIOFUEL_PLANT.png" /></a><a href="BUILDING_GROWLAB.aspx" onmouseover="return tooltip('培养实验室');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_GROWLAB.png" /></a></div>
        
		
		<h2>解锁工人命令：</h2><div class="infobox"><a href="IMPROVEMENT_DOME.aspx" onmouseover="return tooltip('建造圆顶');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_DOME.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">允许建造建筑<span class="color_highlight_building">生物燃料工厂</span>和<span class="color_highlight_building">培养实验室</span>。允许工人建造<span class="color_highlight_improvement">圆顶</span>单元格改良设施。</div>
		
		<h2>名言：</h2><div class="infobox">“如你钢铁之血流自永逝星辰之心。如宇宙之爱之于生。”<br />——萨玛塔·贾玛·巴雷，《此非放逐》</div>
		<h2>历史</h2><div class="infobox">开拓任何星球，尤其是人类对其陌生的星球，自然科学的研究就对生存至关重要。就理解我们周围环境来说，没有比生化学更古老的方式。外星移民不久，殖民地科学家就开始寻求弄清与这个世界动植物相关的从表观遗传学到古生物学的所有学科。他们这千千万万个任务，就是为了让地球的生命形式适应这个新生态，或者至少开发出常见的养殖动植物的方法，好让这里的人类生活得健康幸福一些。因此，很多定居点现在有了温室、生态园、植物园，以及整合进城市景观的专用实验室。</div>
	</div>
</asp:Content>

