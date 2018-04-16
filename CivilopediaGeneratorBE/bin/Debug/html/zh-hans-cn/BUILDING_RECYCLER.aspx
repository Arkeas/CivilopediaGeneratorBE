<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 回收站</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">回收站</div>
	<img src="/civilopediabe/images/large/BUILDING_RECYCLER.png" alt="回收站" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">75 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>维护费用：</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>生产力：</h2><div class="infobox">+2 <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		
        
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('化学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
		
		
		
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">来自贸易路线的+1个</span><img src="/civilopediabe/images/production.png" alt="production" />生产力</div>
		
		<h2>历史</h2><div class="infobox">这是一种材料回收设施，或者按照殖民者的叫法——“回收站”，它的作用是分类并准备废弃材料，以用于替代最终用途产品。早期的殖民地回收站使用机械生物处理法，如厌氧消化法、生物干燥法、气化法；后来回收设施应用了更高级的技术，被殖民科学家改造得更适合在该星球上使用。热解作为一种有效的方法被发现了，有机材料在缺氧的情况下迅速热化分解，产生其他产物——生物碳和生物燃料。另一个有效的方法是用生物催化部分氧化，这样会致使生成合成气，可用于各种重型建筑设备。废物高压锅可以把各种有机废物转化为高品质的肥料和饲料，促进殖民农场的农业生产。而近期的等离子弧法能够通过加工工厂分离合金组件重新利用，尤其是急需的稀有地球金属。没有回收站，很难说一些定居地能否达到今天的规模，因为在本土物质被发现以前，地球资源的有限会阻碍扩张。</div>
	</div>
</asp:Content>

