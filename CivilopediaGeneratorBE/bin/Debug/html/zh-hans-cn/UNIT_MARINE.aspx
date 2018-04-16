<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 士兵</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">士兵</div>
	<img src="/civilopediabe/images/large/UNIT_MARINE.png" alt="士兵" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">50 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>战斗：</h2><div class="infobox">10 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>移动力：</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('居住');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>游戏信息：</h2><div class="infobox">近程单位。基本单位，很容易建造。刚开始的时候很弱小，但升级之后就能提升效果并与更高级的单位一起作战。</div>
		
		<h2>历史</h2><div class="infobox">第一期殖民士兵被归类到空中力量的靡下进行指挥，而不是陆军部队。抛开传言不谈，他们的组建与星际军事无关。他们的训练方针的重点是是针对高空以及无重力条件下的作战。<br /><br />当星际旅行真正得以实现的时候，这些士兵才进化成为了今天我们所熟悉的单位。他们被重新设计成为全方位突击/侦查小队，用于帮助前哨站在外星世界的建设。<br /><br />为了此目的，他们被要求穿上增压服，用于克服严酷的生存环境，例如极度的高温或辐射。增压服要求穿着的士兵不仅要物理上合身，而且智商还必须比常人高。想要入队的人被必须接受严酷的训练以达到上述要求。<br /><br />殖民地最初的发展离不开士兵，他们的任务包括了清除异星生物巢穴以及探索附近的地域。虽然大多数士兵在行动中都会遭到惨重的伤亡，但是没有人会做逃兵。如果没有这些勇敢的士兵，我们今日的殖民地也就不复存在了。</div>
	</div>
</asp:Content>

