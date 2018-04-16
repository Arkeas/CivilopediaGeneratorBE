<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 鉱山</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">鉱山</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_MINE.png" alt="鉱山" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>生産:</h2><div class="infobox">2</span><img src="/civilopediabe/images/production.png" alt="production" />生産力<br /><img src="/civilopediabe/images/energy.png" alt="energy" /> エネルギー: +1 (<img src="/civilopediabe/images/copper.png" alt="copper" /> 銅から)<br /><img src="/civilopediabe/images/culture.png" alt="culture" /> 文化: +1 (<img src="/civilopediabe/images/gold.png" alt="gold" /> 金から)<br /><img src="/civilopediabe/images/research.png" alt="science" /> 科学: +1 (<img src="/civilopediabe/images/silica.png" alt="silica" /> シリカから)<br /><img src="/civilopediabe/images/production.png" alt="production" /> 生産: +3 (<img src="/civilopediabe/images/titanium.png" alt="titanium" /> チタンから)</div>
		
		
		<h2>活用可能な資源:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('チタン');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a><a href="RESOURCE_GOLD.aspx" onmouseover="return tooltip('金');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_GOLD.png" /></a><a href="RESOURCE_COPPER.aspx" onmouseover="return tooltip('銅');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_COPPER.png" /></a><a href="RESOURCE_SILICA.aspx" onmouseover="return tooltip('シリカ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_SILICA.png" /></a></div>
		
		<h2>建設可能な場所:</h2><div class="infobox"><a href="TERRAIN_HILL.aspx" onmouseover="return tooltip('丘陵');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_HILL.png" /></a></div>
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">採掘は星系の垣根を越えて重要であり、この未開の異星においても、資源採集や生産活動は、生存に必要なユニット、建物、遺産を作り出す上で欠かせないものとなっている。鉱山は通常の丘陵タイル上に建設でき、生産力を向上させるほか、銅、シリカといった重要な資源、フィラクサイトといった稀少な資源も手に入るようになる。</div>
	</div>
</asp:Content>

