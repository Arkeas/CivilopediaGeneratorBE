<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 化学</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">化学</div>
	<img src="/civilopediabe/images/large/TECH_CHEMISTRY.png" alt="化学" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>解除される建造物:</h2><div class="infobox"><a href="BUILDING_LABORATORY.aspx" onmouseover="return tooltip('研究所');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_LABORATORY.png" /></a><a href="BUILDING_RECYCLER.aspx" onmouseover="return tooltip('リサイクラー');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RECYCLER.png" /></a></div>
        
		<h2>可視化する資源:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a></div>
		<h2>ワーカー許容アクション:</h2><div class="infobox"><a href="IMPROVEMENT_PETROL_WELL.aspx" onmouseover="return tooltip('石油坑の建設');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PETROL_WELL.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox"><span class="color_highlight_building">研究所</span>および<span class="color_highlight_building">リサイクラー</span>を建設できるようになります。ワーカーは<span class="color_highlight_improvement">石油坑</span>の資源活用施設を建設できるようになります。マップ上に<span class"color_highlight_resource">石油</span>資源が表示されるようになります。</div>
		
		<h2>引用:</h2><div class="infobox">「40億年分の資源が一握りの人々に共有されている。ここで大もうけしよう！」<br />- フタマ『人は皆、成功を運命づけられている』</div>
		<h2>歴史</h2><div class="infobox">ベーコン、ボイル、フック、そしてメーヨーといった先駆者たちが錬金術を科学的教義へと作り替えはじめ、元素の研究に厳格さと秩序をもたらしつつあった太古の時代から、化学は科学研究における最も重要な分野の1つであった。化学法則が体系化され、物質の性質が理解されていくにつれ、化学は工業および科学事業において、極めて重要な領域へと発展した。人類が宇宙へと進出すると、宇宙化学、超分子化学、および有機金属化学といった新部門が誕生した。そして、新たな惑星は、フィラクサイトや浮遊石といった新たな発見をもたらした。これらの新発見は、化学研究を思わぬ方向へと導くことになる。ともあれ化学は応用科学の中でも、人類の宇宙植民地化にとって最重要の分野であると言っても過言ではないだろう。</div>
	</div>
</asp:Content>

