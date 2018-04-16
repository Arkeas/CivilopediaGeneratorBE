<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: ゼノナーサリー</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">ゼノナーサリー</div>
	<img src="/civilopediabe/images/large/BUILDING_XENONURSERY.png" alt="ゼノナーサリー" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">180 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>維持費:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		<h2>科学力:</h2><div class="infobox">+10% <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_ALIEN_SCIENCES.aspx" onmouseover="return tooltip('エイリアン科学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ALIEN_SCIENCES.png" /></a></div>
		
		<h2>専門家:</h2><div class="infobox"><a href="CONCEPT_BUILDINGS_SPECIALISTS.aspx" onmouseover="return tooltip('科学者');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/SPECIALIST_SCIENTIST.png" /></a></div>
		
		
		<h2>アフィニティー:</h2><div class="infobox"><span class="color_harmony_affinity">レベル2の<img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> 調和</span>が必要です</div>
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox"><img src="/civilopediabe/images/research.png" alt="science" /> 科学: +1 (<img src="/civilopediabe/images/xenomass.png" alt="xenomass" /> ゼノマスから)</div>
		
		<h2>歴史</h2><div class="infobox">入植地の植物学者たちが、在来植物種を(農業や製薬、毒物兵器などに)活用すべくその改良に着手した時、こうした植物を繁殖させる特殊な栽苗所が設置された。かつての地球では閉鎖型、コンテナや苗床型、グリーンハウス型、繁殖池などのアプローチが採られたように、こうしたゼノナーサリーにも様々なタイプが存在した。幼苗や若木の大量生産は重労働である一方、作業の大半はオートメーション化されており、温度管理や換気、光量管理、水やりや肥料の散布などはいずれもロボットが受け持っている。在来種や改良種においては種や胞子から繁殖させるケースもあるが、大半の品種は挿し木やクローン化などの無性生殖的手法によって繁殖される。球根植物のツインスケーリングも一般的で、最近では組織培養技術を用いて先祖種を大量増殖させるゼノナーサリーが増えつつある。若い植物はある程度育つと、たいていの場合、屋外農園や果樹園に移送され、そこで商業的に生産される。また、入植地の拡張やテラフォーミングによって脅威に晒されている種を保存するため、未改良の在来種の繁殖に尽力するゼノナーサリーも存在する。エイリアン保護区同様、これらのゼノナーサリーも、様々な科学的研究の拠点となっているほか、一般市民の啓蒙や教育、レクリエーション目的にも活用されている。</div>
	</div>
</asp:Content>

