<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 先駆者</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">先駆者</div>
	<img src="/civilopediabe/images/large/TECH_PIONEERING.png" alt="先駆者" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">80 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>解除されるユニット:</h2><div class="infobox"><a href="UNIT_SETTLER.aspx" onmouseover="return tooltip('コロニスト');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_SETTLER.png" /></a><a href="UNIT_TRADER.aspx" onmouseover="return tooltip('交易団');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_TRADER.png" /></a><a href="UNIT_SEA_TRADER.aspx" onmouseover="return tooltip('交易船');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_SEA_TRADER.png" /></a></div>
		<h2>解除される建造物:</h2><div class="infobox"><a href="BUILDING_DEPOT.aspx" onmouseover="return tooltip('交易拠点');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_DEPOT.png" /></a></div>
        
		
		
		
	</div>	
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox"><span class="color_highlight_building">交易拠点</span>を建設できるようになります。ユニット<span class="color_highlight_unit">コロニスト</span>、<span class="color_highlight_unit">交易団</span>および<span class="color_highlight_unit">交易船</span>を生産できるようになります。</div>
		
		<h2>引用:</h2><div class="infobox">「宇宙は成長するか、衰退するかのどちらかだ。我々は成長を選んだのだ！」<br />- ワジーム・コズロフ『中央司令部議事録名言集』</div>
		<h2>歴史</h2><div class="infobox">北アメリカ大陸を西へと移り住んだ太古の開拓者たちの浪漫譚に基づいて、新惑星の入植初期には、程なくして少人数の集団が遠方へと広がって新天地を開拓し、コロニーの領地は更に広がっていくというシナリオが描かれていた。自動化された建築やプレハブの住居を携えた先駆者たちは、資源や農地、そして戦略的に重要な土地――それらは地球に残った計画者たちが思い描いた、広大で利益を生み、安全なコロニーのあるべき条件だった――を真っ先に確保しようとしたのである。そして、これらの前哨地はやがて都市へと変貌していき、工業プラント、行政府、そして輸送ハブなどが加えられていったのだった。</div>
	</div>
</asp:Content>

