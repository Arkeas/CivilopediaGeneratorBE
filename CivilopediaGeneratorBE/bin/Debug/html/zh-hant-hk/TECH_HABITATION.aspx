<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 居住區</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">居住區</div>
	<img src="/civilopediabe/images/large/TECH_HABITATION.png" alt="居住區" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">50 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>解鎖單位：</h2><div class="infobox"><a href="UNIT_WORKER.aspx" onmouseover="return tooltip('工人');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_WORKER.png" /></a><a href="UNIT_EXPLORER.aspx" onmouseover="return tooltip('探索者');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_EXPLORER.png" /></a><a href="UNIT_MARINE.aspx" onmouseover="return tooltip('士兵');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_MARINE.png" /></a></div>
		<h2>解鎖建築：</h2><div class="infobox"><a href="BUILDING_RELIC.aspx" onmouseover="return tooltip('舊地球遺跡');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RELIC.png" /></a><a href="BUILDING_CLINIC.aspx" onmouseover="return tooltip('診所');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_CLINIC.png" /></a></div>
        
		
		
		
	</div>	
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">解鎖建築<span class="color_highlight_building">診所</span>和<span class="color_highlight_building">舊地球遺跡</span>。解鎖單位<span class="color_highlight_unit">工人</span>、<span class="color_highlight_unit">探索者</span>和<span class="color_highlight_unit">士兵</span>。</div>
		<h2>特殊功能：</h2><div class="infobox">允許在河上建橋<br /></div>
		<h2>名言錦句：</h2><div class="infobox">「我們曾一度相信命運被上帝所左右。我們更了解大自然的同時，也逐漸改變心意。現在的我們可以掌控自己的命運，讓我們一同期待我們不會再走回頭路。」<br />- 無名</div>
		<h2>歷史</h2><div class="infobox">除糧食和水以外，人類最基本的需求是遮風避雨之處。到了 21 世紀，人類已從泥磚屋、厚壁城堡和混凝土高樓，搬移至可「自動建造」的預製結構。而可減緩因海平面上升所導致人口遷徙時的住房短缺問題的後者，已發展為「播種」期間的殖民場。當然，在異族世界的可行居住區對殖民者而言不僅僅是遮風避雨之處；也包括倉庫、文化中心、管理結構和其他住宅。這些通常是在預製住宅上漲後，第一批的建造計畫。</div>
	</div>
</asp:Content>

