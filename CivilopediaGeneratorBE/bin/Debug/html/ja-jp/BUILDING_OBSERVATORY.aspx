<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 観測所</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">観測所</div>
	<img src="/civilopediabe/images/large/BUILDING_OBSERVATORY.png" alt="観測所" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">100 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>維持費:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		<h2>科学力:</h2><div class="infobox">+2 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_PHYSICS.aspx" onmouseover="return tooltip('物理学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PHYSICS.png" /></a></div>
		
		
		
		
		
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox"><img src="/civilopediabe/images/research.png" alt="science" /> 科学: +1 (<img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> フィラクサイトから)</div>
		
		<h2>歴史</h2><div class="infobox">入植者たちが最初に建造した科学的施設のひとつが観測所である。観測所はこの新たな星の天体図の作成だけでなく、気象学、地質学、海洋学、火山学の研究にも用いられ、入植者たちがこの星のことを理解する上で大きな貢献を果たした。元々は多様な装置を用いて電磁スペクトルを測定していたが、やがてこの地上ベースの観測所の天体望遠鏡を用いて、近宇宙および深宇宙の合成地図を作成するほか、人間をこの星へと運んできた宇宙船由来の、軌道上に残存するデブリ帯の完全な追跡も可能になった。電波望遠鏡からは、かつての地球の観測所では考えられなかったほど鮮明な、宇宙の中心部の映像が得られたが、それは部分的にはこの星の大気が薄いせいだった。その後、コロニーの一部の観測所ではエックス線やガンマ線、高エネルギー粒子望遠鏡などが導入されたほか、最新の観測所においては、重力派検出器を用いて時空の歪みを特定・計測したり、ニュートリノ検出器を用いて超新星爆発などの天体現象のマッピングを行っている。一部のコロニーの行政部が、宇宙へ戻り、故郷の星との再コンタクトを試みようとしている今、こうした観測所の存在価値は極めて高いと言える。最後に、この地質活動が活発な惑星の火山の観察により、観測所はコロニーの拡張に不可欠な貢献を果たしてきたことも記する必要がある。</div>
	</div>
</asp:Content>

