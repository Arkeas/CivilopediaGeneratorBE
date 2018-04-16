<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 基因园地</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">基因园地</div>
	<img src="/civilopediabe/images/large/BUILDING_GENE_GARDEN.png" alt="基因园地" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">200 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>维护费用：</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>健康度：</h2><div class="infobox">+2 <img src="/civilopediabe/images/health.png" alt="health" /></div>
		
		
		
		<h2>科学：</h2><div class="infobox">+1 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>需求科技：</h2><div class="infobox"><a href="TECH_GENETIC_DESIGN.aspx" onmouseover="return tooltip('基因设计');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_GENETIC_DESIGN.png" /></a></div>
		
		
		
		
		<h2>倾向性:</h2><div class="infobox">需要<span class="color_purity_affinity">2级<img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> 纯正</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>历史</h2><div class="infobox">第一个“基因园地”的建立是为了研制提供治疗用DNA转基因，至于是将其整合进基因组还是作为外部游离基因则并不重要，因为最后是作为体细胞和生殖细胞使用。利用重组病毒或“裸”DNA，医生能够治愈或者限制仍普遍存在于旧地球殖民者身上的一部分遗传性疾病，如亨廷顿舞蹈症、帕金森症、老年痴呆症、淋巴细胞白血病、无脉络膜症以及多种免疫缺陷，这些病症都可从人群中有效地消除。部分情况下，基因园地也成为了研究基因工程及基因培育的场所，殖民地在这两个领域付出了极大的努力，就是为了让市民适应这个星球。不久，基因园地所开发的技术被用于适应人类基因突变、轻微的新陈代谢调整，以便消化吸收本土植物，同时也减轻对传统农业的依赖。最后，基因园地成为众多定居地生物技术基础设施重要的组成部分，在食物生产、生物医药、生物机器人、资源回收、甚至生物燃料的生产中都做出了贡献。但他们在对抗疾病方面仍扮演着重要角色，最近一次表现是在应用免疫学、产前遗传诊断和基因制药领域。</div>
	</div>
</asp:Content>

