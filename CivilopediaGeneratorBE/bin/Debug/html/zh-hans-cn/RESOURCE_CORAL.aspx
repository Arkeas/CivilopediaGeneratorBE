<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 珊瑚</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">珊瑚</div>
	<img src="/civilopediabe/images/large/RESOURCE_CORAL.png" alt="珊瑚" class="contentimage" />
	<div class="contentleft">
		<h2>产出：</h2><div class="infobox">{1_num}点<img src="/civilopediabe/images/culture.png" alt="culture" />文化值</div>
		
		<h2>相容地形：</h2><div class="infobox"><a href="TERRAIN_COAST.aspx" onmouseover="return tooltip('海岸');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_COAST.png" /></a></div>
		<h2>修建者：</h2><div class="infobox"><a href="IMPROVEMENT_WORK_BARGE.aspx" onmouseover="return tooltip('工作驳船');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_WORK_BARGE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>历史</h2><div class="infobox">地球上的板珊瑚大多生长在石灰岩和钙质页岩中，虽然它们在二叠纪就已经灭绝了（被石珊瑚所取代），可由于这颗新的星球还处在石炭纪，所以在这里的浅海地区，这种珊瑚还大量的生长着。珊瑚是一种动物，有着管状的生物形态，其下端固定在稳固的表面上，而其上端生长着一圈触须，用于收集食物。这颗星球上的珊瑚直径可达30毫米，根据其年龄、所处环境中的食物供应和水温情况不同，每年最多可生长半厘米。板珊瑚的外骨骼主要由方解石构成，这种生物形成了广阔的底层垫层以及枝生物物质，也就是珊瑚礁。其上生长着多种咸水海胆纲、腕足类、双壳类、以及腹足类生物。虽然有些板珊瑚可以用触须捕捉小型的无脊椎动物和浮游生物，绝大多数还是以光合作用的海藻为食。地球上的珊瑚，或者说巨大的珊瑚集群骸骨被广泛的用于珠宝或美妆产品中，在某些地方（例如非洲东部）也被用于提取石灰，用作建筑材料。这种做法在许多殖民地里也得到了沿袭，不过波利尼利亚和其他一些殖民地的生态学家却发明了许多将珊瑚以工业规模用于促进水产养殖的方法。</div>
	</div>
</asp:Content>

