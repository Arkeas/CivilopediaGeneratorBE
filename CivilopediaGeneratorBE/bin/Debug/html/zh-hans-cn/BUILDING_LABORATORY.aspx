<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 实验室</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">实验室</div>
	<img src="/civilopediabe/images/large/BUILDING_LABORATORY.png" alt="实验室" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">80 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>维护费用：</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		<h2>科学：</h2><div class="infobox">+2 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('化学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
		
		
		
		
	</div>
	<div class="contentright">
		
		
		<h2>历史</h2><div class="infobox">很显然，研究和理解将成为殖民地生存下去和获得成功的关键，所以建立实验室、研究在外星定居所必需的科学学科是殖民地行政人员的首要问题。研究传统学科，诸如化学、生物学、地质学和气象学是为了理解并开发该星球，新科学就是在此理解上兴起的。在实验室中对未知资源、种群和真菌的临床研究使得技术和生物学在各个领域都取得大幅进步。启动时配备了最新的研究设备原型和设计，殖民地的实验室在效率上堪称典范。本就很庞大的科学数据库，加上了数千个新发明、新见解、应用和发现，促进了殖民地的扩张和在新星球上的探索。虽然这些难得的知识并非都是有益的——有些发现在意料之外，结果也十分不幸——但并不妨碍星球上的实验室继续其研究。</div>
	</div>
</asp:Content>

