<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: LEV戦車</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">LEV戦車</div>
	<img src="/civilopediabe/images/large/UNIT_LEV_TANK.png" alt="LEV戦車" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">300 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>戦闘力:</h2><div class="infobox">28 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		<h2>遠隔攻撃力:</h2><div class="infobox">44 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>遠隔攻撃範囲:</h2><div class="infobox">2 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		<h2>移動力:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>必要な資源:</h2><div class="infobox"><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('浮遊石');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_MOBILE_LEV.aspx" onmouseover="return tooltip('モバイルLEV');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_MOBILE_LEV.png" /></a></div>
		
		
		
		<h2>アフィニティー:</h2><div class="infobox"><span class="color_purity_affinity">レベル9の<img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> 純血</span>が必要です</div>
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox"><span class="color_purity_affinity"><img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" />純血アフィニティーの固有ユニットです。</span>浮遊する走行車両で、谷や水上の移動を可能にしています。強力な遠隔攻撃機動ユニットです。</div>
		
		<h2>歴史</h2><div class="infobox">20世紀の夜明けと共に登場した戦車は、人類のあらゆる陸軍部隊の主役であり続けてきた。戦車は様々なモデルチェンジを経ながら、機甲戦の理論家や戦術家によってその解釈が押し広げられてきた。守備力重視、機動力重視、火力重視などのタイプが存在し、"大いなる過ち"に至るまでその戦闘モデルを進化させてきたが、その後は資源不足から来る製造コストの増大により、"機甲戦の終焉"を迎えてしまう。だが、それで戦車が滅びたわけではなかった。<br /><br />浮遊石リアクターの改良に伴い、反重力場ジェネレーターが現実味を帯びてくると、軍事理論家たちは再び"戦車"という概念に着目した。懸架重量制限が撤廃されたことで、設計士たちは、地球の祖先たちが造り上げたあらゆる戦車を凌駕する、新時代の戦車をデザインし、その生産に取りかかった。装甲を強化するだけでなく、搭載兵器も拡充されたこれらの戦車は、あらゆる脅威に効果的に対処することができた。その主砲は、"種まき"以前の地球における単純な戦車砲から格段に進化しており、今や様々な種類の砲弾を、遠方のターゲットへ向けて発射できた。スピードこそ航空機に劣るが、最新型のLev戦車は厄介な相手であり、過去に開発された大半の戦闘兵器よりも倒すのが難しい。振り子が再び、守備力重視の方向へと振れたわけである。<br /><br />地上戦の中心的役割を担うLev戦車は、大半の標的を粉砕できる火力と、車内の熟練乗組員たちを防護する装甲を有する。中隊や大隊単位で活動し、あらゆる攻撃の先陣を切るユニットである。複合装甲と無数の銃砲をまとった数百メートルトンの物体が、地形を滑るように進んでいく光景を目にするだけで、臆病な敵であれば武器を捨てて退却してしまうだろう。</div>
	</div>
</asp:Content>

