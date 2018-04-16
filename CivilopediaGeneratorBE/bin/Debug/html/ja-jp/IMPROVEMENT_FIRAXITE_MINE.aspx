<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: フィラクサイト鉱山</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">フィラクサイト鉱山</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FIRAXITE_MINE.png" alt="フィラクサイト鉱山" class="contentimage" />
	<div class="contentleft">
		<h2>維持費:</h2><div class="infobox">2 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>生産:</h2><div class="infobox"><img src="/civilopediabe/images/research.png" alt="science" /> 科学: +3 (<img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> フィラクサイトから)</div>
		
		
		<h2>活用可能な資源:</h2><div class="infobox"><a href="RESOURCE_FIRAXITE.aspx" onmouseover="return tooltip('フィラクサイト');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FIRAXITE.png" /></a></div>
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_ROBOTICS.aspx" onmouseover="return tooltip('ロボット工学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ROBOTICS.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">採掘は星系の垣根を越えて重要であり、この未開の異星においても、資源採集や生産活動は、生存に必要なユニット、建物、遺産を作り出す上で欠かせないものとなっている。鉱山は通常の丘陵タイル上に建設でき、生産力を向上させるほか、銅、シリカといった重要な資源、フィラクサイトといった稀少な資源も手に入るようになる。</div>
	</div>
</asp:Content>

