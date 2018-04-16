<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 工作驳船</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">工作驳船</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_WORK_BARGE.png" alt="工作驳船" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>产出：</h2><div class="infobox"><img src="/civilopediabe/images/algae.png" alt="algae" /> 海藻提供+1 <img src="/civilopediabe/images/food.png" alt="food" /> 食物<br /><img src="/civilopediabe/images/coral.png" alt="coral" /> 珊瑚提供+1 <img src="/civilopediabe/images/research.png" alt="science" /> 科学<br /><img src="/civilopediabe/images/coral.png" alt="coral" /> 珊瑚提供+1 <img src="/civilopediabe/images/production.png" alt="production" /> 生产力</div>
		
		
		<h2>获得资源：</h2><div class="infobox"><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('海藻');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('珊瑚');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a></div>
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_PLANETARY_SURVEY.aspx" onmouseover="return tooltip('行星勘测');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PLANETARY_SURVEY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">工作驳船是用来获取近海资源（珊瑚和海藻）的一种普通设施。这种海面工作平台是在海岸城市建造，并牵引到珍贵资源处进行收集工作。</div>
	</div>
</asp:Content>

