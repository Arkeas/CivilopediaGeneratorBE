<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 製造</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">製造</div>
	<img src="/civilopediabe/images/large/TECH_FABRICATION.png" alt="製造" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">770 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>解除されるユニット:</h2><div class="infobox"><a href="UNIT_NAVAL_CARRIER.aspx" onmouseover="return tooltip('航空母艦');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_NAVAL_CARRIER.png" /></a></div>
		<h2>解除される建造物:</h2><div class="infobox"><a href="BUILDING_ALLOY_FOUNDRY.aspx" onmouseover="return tooltip('合金鋳造所');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_ALLOY_FOUNDRY.png" /></a></div>
        
		
		<h2>ワーカー許容アクション:</h2><div class="infobox"><a href="ROUTE_MAGRAIL.aspx" onmouseover="return tooltip('マグレールの建設');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/ROUTE_MAGRAIL.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox"><span class="color_highlight_building">合金鋳造所</span>を建設できるようになります。<span class="color_highlight_unit">航空母艦</span>を生産できるようになります。ワーカーは<span class="color_highlight_improvement">マグレール</span>の資源活用施設を建設できるようになります。</div>
		
		<h2>引用:</h2><div class="infobox">「メタ認知を判断するには、次の質問をすることだ。この生命体は単に道具を作るだけか？　それとも新たな道具を作るための道具を作るか？」<br />- ダオミン・ソチュア『科学的倫理 VII巻』</div>
		<h2>歴史</h2><div class="infobox">製造とは、その最も単純な形態において、ミクロからマクロのレベルへと、物質を構築または生産する過程に過ぎない。コロニーの基本的な産業基盤が整備されると、この惑星の環境や資源に適応した、マイクロ製造、複合製造、半導体素子製造、および固体自由形状製造といった過程における新たな手順が考案されていった。"種まき"以前のかつての地球で用いられていた積層造形法や3Dプリンティングといった手法は、さらに発展、洗練され、適切な原材料さえ用意できれば、事実上どんな物体でも製造できる段階まで到達した。しかし不幸なことに、このような手法に必要な稀少原材料を巡るいさかいが、この世界に新設されたコロニー間の多くの紛争の火種となったのである。</div>
	</div>
</asp:Content>

