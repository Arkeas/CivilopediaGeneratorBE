<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 菲拉瑟晶矿场</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">菲拉瑟晶矿场</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FIRAXITE_MINE.png" alt="菲拉瑟晶矿场" class="contentimage" />
	<div class="contentleft">
		<h2>维护费用：</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>产出：</h2><div class="infobox"><img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> 菲拉瑟晶矿提供+3 <img src="/civilopediabe/images/research.png" alt="science" /> 科学</div>
		
		
		<h2>获得资源：</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('菲拉瑟晶矿');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('机器人学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">矿业的重要性已经超出了地球的范围。在未开发的异星世界里，对于资源和生产的需求同样很高，毕竟殖民地需要各种单位、建筑、以及奇观来保证生存。矿场可以修建在丘陵地区，可以提高城市的生产力。矿场同样可以为城市获取到一些重要的资源，比如铜、硅土、和菲拉瑟晶矿。</div>
	</div>
</asp:Content>

