<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 工作船</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">工作船</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_WORK_BARGE.png" alt="工作船" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>產出：</h2><div class="infobox">+1 來自 <img src="/civilopediabe/images/algae.png" alt="algae" /> 海藻 的 <img src="/civilopediabe/images/food.png" alt="food" /> 糧食<br />+1 來自 <img src="/civilopediabe/images/coral.png" alt="coral" /> 珊瑚 的 <img src="/civilopediabe/images/research.png" alt="science" /> 科技值<br />+1 來自 <img src="/civilopediabe/images/coral.png" alt="coral" /> 珊瑚 的 <img src="/civilopediabe/images/production.png" alt="production" /> 生產力</div>
		
		
		<h2>改良資源：</h2><div class="infobox"><a href="RESOURCE_ALGAE.aspx" onmouseover="return tooltip('海藻');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_ALGAE.png" /></a><a href="RESOURCE_CORAL.aspx" onmouseover="return tooltip('珊瑚');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CORAL.png" /></a></div>
		<h2>科技要求：</h2><div class="infobox"><a href="TECH_PLANETARY_SURVEY.aspx" onmouseover="return tooltip('行星調查');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PLANETARY_SURVEY.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">工作船是沿海資源（珊瑚和海藻）的常見改良設施。這些浮動的工作平臺建在沿海城市，並拖曳至定位以採收珍貴的資源供您使用。</div>
	</div>
</asp:Content>

