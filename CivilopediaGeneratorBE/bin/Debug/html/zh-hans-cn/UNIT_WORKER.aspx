<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 工人</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">工人</div>
	<img src="/civilopediabe/images/large/UNIT_WORKER.png" alt="工人" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">60 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		<h2>移动力：</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('居住');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">平民单位在陆地或海洋建设改良设施，有城市人口工作时提高单元格效果。</div>
		<h2>策略：</h2><div class="infobox">这个单位可建造道路、磁能轨道以及如农场、矿场这类改良设施。它不具备防御能力，所以在危险的领土时需要军事单位保护。</div>
		<h2>历史</h2><div class="infobox">如果说人民是殖民地的心脏，那么工人就是血液。工人可以各种地形上修建不同的改良设施以供殖民地利用。而且他们还可以驱散瘴气，让人们可以安全的在土地上通行。随着殖民地的技术得到发展，工人的能力也会随之提高，他们甚至可以制造瘴气，以及复制地球的地球景观环境。</div>
	</div>
</asp:Content>

