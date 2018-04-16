<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 火山輝晶礦場</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">火山輝晶礦場</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FIRAXITE_MINE.png" alt="火山輝晶礦場" class="contentimage" />
	<div class="contentleft">
		<h2>維護費：</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>產出：</h2><div class="infobox">+3 來自 <img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> 火山輝晶 的 <img src="/civilopediabe/images/research.png" alt="science" /> 科技值</div>
		
		
		<h2>改良資源：</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('火山輝晶');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>科技要求：</h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('機器人學');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">採礦的重要性跨越地球的界限。在未受破壞的外星世界，對資源和生產有同等的需求，因為它們提供生存必要的單位、建築物和奇跡。礦場可以建立在基本丘陵上以提高生產率。它們還可取得重要資源，如銅、矽和稀有的火山輝晶。</div>
	</div>
</asp:Content>

