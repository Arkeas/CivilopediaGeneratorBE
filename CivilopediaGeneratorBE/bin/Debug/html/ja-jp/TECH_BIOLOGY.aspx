<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 生物学</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">生物学</div>
	<img src="/civilopediabe/images/large/TECH_BIOLOGY.png" alt="生物学" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">770 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>解除される建造物:</h2><div class="infobox"><a href="BUILDING_BIOFUEL_PLANT.aspx" onmouseover="return tooltip('バイオ燃料プラント');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_BIOFUEL_PLANT.png" /></a><a href="BUILDING_GROWLAB.aspx" onmouseover="return tooltip('培養ラボ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_GROWLAB.png" /></a></div>
        
		
		<h2>ワーカー許容アクション:</h2><div class="infobox"><a href="IMPROVEMENT_DOME.aspx" onmouseover="return tooltip('ドームの建設');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_DOME.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox"><span class="color_highlight_building">バイオ燃料プラント</span>および<span class="color_highlight_building">培養ラボ</span>を建設できるようになります。ワーカーは<span class="color_highlight_improvement">ドーム</span>の資源活用施設を建設できるようになります。</div>
		
		<h2>引用:</h2><div class="infobox">「あなたの血管には、はるか昔に滅んだ星の心臓で作られた鉄が流れている。宇宙が生物を愛するように」<br />- サマタール・ジャマ・バレー『これは亡命にあらず』</div>
		<h2>歴史</h2><div class="infobox">人類にとってこれ程異質な惑星ならなおさらだが、いかなる惑星を開拓する場合も、自然科学の研究は生存するために不可欠だ。その中でも生物学は、我々の環境を理解するにおいて、最古の手段の1つである。惑星降下から間もなく、入植地の生物学者たちは、発生遺伝学から古生物学までありとあらゆる学術分野の観点から、この世界の動植物相を理解しようと努めていた。彼らに託された無数の任務の中には、地球生物をこの新たな生態系に順応させる、または少なくとも、馴染み深い動植物がこの惑星における人間の健康や幸福に貢献できる方法を開発させる、という取り組みがあった。そのため多くの入植地では、温室、飼育場、植物園、そして専門研究所などが、市民の生活区に統合されて設けられるようになったのである。</div>
	</div>
</asp:Content>

