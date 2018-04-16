<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 空中クレーン</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">空中クレーン</div>
	<img src="/civilopediabe/images/large/BUILDING_SKYCRANE.png" alt="空中クレーン" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">470 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>維持費:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>生産力:</h2><div class="infobox">+15% <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		<h2>必要な資源:</h2><div class="infobox"><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('浮遊石');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
        
		
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_ASTRODYNAMICS.aspx" onmouseover="return tooltip('宇宙力学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ASTRODYNAMICS.png" /></a></div>
		
		
		
		
		<h2>アフィニティー:</h2><div class="infobox"><span class="color_purity_affinity">レベル10の<img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> 純血</span>が必要です</div>
	</div>
	<div class="contentright">
		
		
		<h2>歴史</h2><div class="infobox">磁気浮上(マグレブ)エンジンには様々な用途があり、もちろん建設もその1つだ。人類は何世紀も前から、重量物の持ち運びにクレーンを用いていた。そのため大型のマグレブエンジンが考案されると、何よりもまず、地上と低軌道上のいずれのプロジェクトでも使える、空中でも稼働できるクレーンへの応用が期待された。磁気浮上技術の性格上、基部付近のモーメントの総量はゼロ近くになるため、安定性に優れるスカイクレーンのつり上げ荷重は、通常の地上型クレーンの安定限界総荷重に比べて優れていた。入植地のスカイクレーンはだいたい2種類に分類される。ひとつが、吊り下げフック機構がプラットフォームの下に位置する天上型(橋型)で、もうひとつが、プラットフォームのアームが伸縮する、サイドリフト型のピックアンドキャリークレーンだった。この他、その両方の特徴を兼ね備えた超大型のスカイクレーンや、ベッセルビームシステムを導入したクレーンもあった。地上型クレーンにおける最大の課題のひとつがレベリング(水平保持)だったが、スカイクレーンにおいては複数のマグレブエンジンを装備する設計により、そうした問題は回避された。今やスカイクレーンは、ハンマーヘッド部の水圧式アームを用いて巨大なパーツを所定の位置まで運搬する、低軌道上建設には欠かせない装備となっている。低軌道上での作業では荷重量は問題にならない反面、慣性負荷に悩まされるため、軌道上建設用スカイクレーンの多くは、様々なタイプの慣性ダンパーを内蔵している。</div>
	</div>
</asp:Content>

