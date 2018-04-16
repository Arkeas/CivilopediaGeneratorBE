<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 水果</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">水果</div>
	<img src="/civilopediabe/images/large/RESOURCE_FRUIT.png" alt="水果" class="contentimage" />
	<div class="contentleft">
		<h2>產出：</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食物</div>
		
		<h2>出現地形：</h2><div class="infobox"><a href="FEATURE_FOREST.aspx" onmouseover="return tooltip('森林');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_FOREST.png" /></a><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a></div>
		<h2>改良設施：</h2><div class="infobox"><a href="IMPROVEMENT_PLANTATION.aspx" onmouseover="return tooltip('莊園');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PLANTATION.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>歷史</h2><div class="infobox">此星球仍處於等同於地球的石炭紀世代，仍有少數原始被子植物，因此，原生果樹非常稀少。第一批從人民非洲聯盟、太平洋國協和南美國家機構前來的殖民者引進多種可長出可食水果的耐寒熱帶植物；一些種類仍得以存活並在此星球上繁衍生長，特別是榴蓮、西非荔枝果、菠蘿蜜、番荔枝、白柿、羅望子和麵包果。確實在半個世紀內，這些果樹得以漫延野外，成功與原生的被子植物共生，並變為殖民地的主食。許多原生種仙人掌確實會產出類似於仙人球（仙人掌）且具營養價值的水果。此外，一些原生菌也可產出可食用的真菌，可滿足可食用水果一般定義和作用。最後，地球已滅絕的近親果洛仲會產出紫杉類漿果，而石灰紀麟木科的石松門會產出非常美味的「果實甜筒」。不論是從野外採集或由殖民農夫大量培育，多種不同的水果種類改善殖民者的飲食，且在多數情況下，提供維持人類生命的重要礦物質、維生素和纖維。</div>
	</div>
</asp:Content>

