<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 工学</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">工学</div>
	<img src="/civilopediabe/images/large/TECH_ENGINEERING.png" alt="工学" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>解除されるユニット:</h2><div class="infobox"><a href="UNIT_CAVALRY.aspx" onmouseover="return tooltip('コンバットローバー');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_CAVALRY.png" /></a></div>
		<h2>解除される建造物:</h2><div class="infobox"><a href="BUILDING_THORIUM_REACTOR.aspx" onmouseover="return tooltip('トリウムリアクター');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_THORIUM_REACTOR.png" /></a><a href="BUILDING_REPAIR_FACILITY.aspx" onmouseover="return tooltip('修理場');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_REPAIR_FACILITY.png" /></a></div>
        
		<h2>可視化する資源:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('チタン');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		
		
	</div>	
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox"><span class="color_highlight_building">トリウムリアクター</span>および<span class="color_highlight_building">修理場</span>を建設できるようになります。軍事ユニット<span class="color_highlight_unit">コンバットローバー</span>を生産できるようになります。マップ上に<span class"color_highlight_resource">チタン</span>資源が表示されるようになります。</div>
		
		<h2>引用:</h2><div class="infobox">「子供たちにおもちゃやお菓子の夢ではなく、インフラの夢を見るよう指導しろ」<br />- ワジーム・コズロフ『中央司令部議事録名言集』</div>
		<h2>歴史</h2><div class="infobox">実用的な原理を応用することで、構造体、装置、機械およびシステムを作成、構築することは、文明の基盤である。理論科学が進歩するにつれ、その応用的側面も、工学という形で発展していった。機械工学、化学工学、電気工学、土木工学分野の技師たちは、種まき期の入植事業において、必須の存在だった。惑星降下から程なく、技術者たちは、この新世界で使用可能な新素材や手法を発見し開発していた。それに加えて、コロニーで人間が生存するために不可欠な水、鉱物、エネルギー等を確保するために、伝統的な地球の技術も適応されていた。技術者たちによって新たな"ナノマシン"が設計され、ナノテクノロジーが惑星遺産のような巨大構造の建設に応用されるようになり、工学はマクロとミクロの両面へと拡張していった。</div>
	</div>
</asp:Content>

