<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 超核所</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">超核所</div>
	<img src="/civilopediabe/images/large/BUILDING_HYPERCORE.png" alt="超核所" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">470 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>维护费用：</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		<h2>科学：</h2><div class="infobox">+2 <img src="/civilopediabe/images/research.png" alt="research" /> , +15% <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		<h2>资源需求：</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('菲拉瑟晶矿');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
        
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_HYPERCOMPUTING.aspx" onmouseover="return tooltip('高速计算学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HYPERCOMPUTING.png" /></a></div>
		
		
		
		
		<h2>倾向性:</h2><div class="infobox">需要<span class="color_supremacy_affinity">10级<img src="/civilopediabe/images/AFFINITY_TYPE_SUPREMACY.png" alt="supremacy" /> 至高</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>历史</h2><div class="infobox">使用了非图灵功能的计算机处理器的发展使得超核所工程变为了可能。超核是一个多核量子CPU ，能应用“模糊逻辑”处理超回归算法。并入的缓存一致线路能让它以接近光速（理论上为转光速）进行数据采集和问题处理，支持同步多线程。为了避免迈斯纳效应，超核需利用菲拉瑟晶矿的一项特性来发展高速导体。自从第一个可用的超核制造成功三十多年后，几个已知的量子高速计算学运行模型已经由殖民地程序员开发出来：模拟周期神经网络、基于超算法的马拉门特-贺加斯时空网络、迭代限制（k次）的功能提升数据库。无论用的是哪种模型，超核相对于传统处理器的优势都是其速度、决策点、导向自主以及非线性分析能力。殖民地目前制造的超核计算机已开始处理各种极度复杂的问题，比如和超光速旅行（伯纳德特悖论或拉劳多哥提亚的非牛顿决定论问题）相关的“超任务”，还有解码“信号”，以及亚里士多德的实际与潜无限区别的问题。但大多数这些超核计算机还是被殖民地科学家用于不那么难懂的学科，仅仅应对普通一些的研究挑战。</div>
	</div>
</asp:Content>

