<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 诊所</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">诊所</div>
	<img src="/civilopediabe/images/large/BUILDING_CLINIC.png" alt="诊所" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">60 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>维护费用：</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>健康度：</h2><div class="infobox">+1 <img src="/civilopediabe/images/health.png" alt="health" /></div>
		
		
		
		<h2>科学：</h2><div class="infobox">+1 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('居住');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
		
	</div>
	<div class="contentright">
		
		
		<h2>历史</h2><div class="infobox">诊所属于小型医疗设施，旨在为有医疗需求的小社区提供服务。到了21世纪后期，医疗诊所大部分都实现了自动化，只有一位医生或者护士值班，以防遇到一些诊断程序无法确诊的伤病。自动配药柜（计算机化药品储存设备）、手术用微型机器人、远程医疗站、智能监控病床、自主现场看护设备以及类似的先进医疗技术能够处理所有的门诊和短期住院病人。虽然并不是全部的硬件都属于殖民地的有效负载，但医疗设施的软件和规格仍属于政策上需考虑的问题。在本星球的早期殖民地时期，各类危险和疾病的信息数量呈指数上涨，对于殖民地的人口稳定和增长来说，诊所变得前所未有的重要。比如瘴气中毒的治疗规程和方法被迅速加入连接到殖民地诊所的医疗数据库中；仅仅这一举措就拯救了数百人的生命。虽然在较大一些的殖民地，配置了工作人员的医院还是取代了小型医疗设施，但在大多数邻近地区和村庄，主要的医疗设施仍是自动化诊所。</div>
	</div>
</asp:Content>

