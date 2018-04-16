<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 探险家</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">探险家</div>
	<img src="/civilopediabe/images/large/UNIT_EXPLORER.png" alt="探险家" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">40 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>战斗：</h2><div class="infobox">6 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>移动力：</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('居住');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">探索单位。用来探索地形、敌方军队和异星生物活动非常理想，只具备轻型战斗力，防御尚可，但不适合大规模战役。</div>
		<h2>策略：</h2><div class="infobox">该单位能够对地图进行探索，并且还能在找到人造资源处建立考察现场。</div>
		<h2>历史</h2><div class="infobox">探索队是殖民地的侦查单位。为了给人们带来知识，它们可以快速地在世界中移动，同时驱除战争迷雾。然而，侦察兵准确的来讲是为了探勘目前的形势，探索队同时还需要去揭露过去的真相。队伍的主要核心成员由精通发掘的考古学家来担任。他们的考察将会给殖民地带来各种好处，考察范围涵盖了：被废弃定居点、先祖废墟、异星虫族的骸骨、甚至还有坠落的轨道卫星。</div>
	</div>
</asp:Content>

