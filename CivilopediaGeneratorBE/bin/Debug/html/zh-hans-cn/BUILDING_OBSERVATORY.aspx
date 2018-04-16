<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 观测站</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">观测站</div>
	<img src="/civilopediabe/images/large/BUILDING_OBSERVATORY.png" alt="观测站" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">100 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>维护费用：</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		<h2>科学：</h2><div class="infobox">+2 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_PHYSICS.aspx" onmouseover="return tooltip('物理学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PHYSICS.png" /></a></div>
		
		
		
		
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox"><img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> 菲拉瑟晶矿提供+1 <img src="/civilopediabe/images/research.png" alt="science" /> 科学</div>
		
		<h2>历史</h2><div class="infobox">在众多的科学设施中，殖民者最先建造的是观测站。观测站不仅用于描绘新天堂的天体图，也是为了研究气象、地质、海洋和火山，以争取了解这个新星球。地面观测站最初利用各种设备监控电磁频谱，最后画出了远近空间领域的合成图，还有几艘带人类来到这里的星际飞船留在轨道上的残骸的完整轨迹。多亏了这个星球稀薄的大气，射电望远镜生成的银河中心图像比旧地球任何观测站的都要优秀。 X射线、伽马射线和高能粒子望远镜不久也被配备到殖民地观测站；崭新的观测站现在也有了重力波探测器，可以定位并测量时空扭曲，还有用于映射超新星和其他独特天文现象的中微子探测器。考虑回到太空并重新与故乡建立通讯的殖民地行政机构对这些观测站抱有很大兴趣。最后应该铭记的是在这个地质活动活跃的星球上，火山观测站对殖民地扩张和安全做出的重大贡献。</div>
	</div>
</asp:Content>

