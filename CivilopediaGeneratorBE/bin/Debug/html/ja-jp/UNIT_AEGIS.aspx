<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: イージス</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">イージス</div>
	<img src="/civilopediabe/images/large/UNIT_AEGIS.png" alt="イージス" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">180 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>戦闘力:</h2><div class="infobox">20 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		<h2>遠隔攻撃力:</h2><div class="infobox">34 <img src="/civilopediabe/images/range_strength.png" alt="range strength" /></div>
		<h2>遠隔攻撃範囲:</h2><div class="infobox">2 <img src="/civilopediabe/images/range.png" alt="range" /></div>
		<h2>移動力:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		<h2>必要な資源:</h2><div class="infobox"><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('チタン');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('浮遊石');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_SURROGACY.aspx" onmouseover="return tooltip('代理化');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_SURROGACY.png" /></a></div>
		
		
		
		<h2>アフィニティー:</h2><div class="infobox"><span class="color_purity_affinity">レベル7の<img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" /> 純血</span>が必要です</div>
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox"><span class="color_purity_affinity"><img src="/civilopediabe/images/AFFINITY_TYPE_PURITY.png" alt="purity" />純血アフィニティーの固有ユニットです。</span>多様な武装に対応した軽歩行マシンで、各種の遠隔支援攻撃を担当します。</div>
		
		<h2>歴史</h2><div class="infobox">軍事研究家たちは、二足歩行の興味深い副産物を発見した(最初に気づいたのはウィリュン軍研究所の職員たち)――兵士たちは四足歩行型よりも二足歩行型戦闘ユニットと一緒の時のほうが、戦闘効率が上がるということだ。こうした"ウィリュン効果"には様々な説明が成されているが、ひとつ言えるのは、二足歩行型戦闘ユニットの製造コストを補って余りあるほど、人間の兵士たちが得られる利点は大きいということである。兵士たちはこれらのユニットを、人間の代わりに戦ってくれる崇高な存在と捉える傾向にあり、要因分析の結果を見る限り、そうしたユニットは"戦いの亜神"と"でっかい銃を持った頼れる兄弟"の中間あたりに位置していると考えられる。一部の軍事科学者たちは、こうした研究をさらに掘り下げて行ったが、そのもっとも分かりやすい成果がイージスである。<br /><br />多くの"純血派"の戦闘ユニットとは異なり、イージスは戦闘用AIを搭載している。もっとも、その人工知能は姿勢制御や動作連携、損傷補修、兵器のリロードなどに特化されており、どの敵と交戦するかは人間のオペレーターが自由に選択できる。人工知能に許されるのは基本的な動作(歩行での修理ガントリーへの出入りなど)に限られ、兵器の引き金を引くことはできない一方、人間のオペレーターは多彩な兵器システムを駆使して、様々な戦場の脅威に対することができる。イージスのもっとも素晴らしい点は、ひとりの人間のオペレーターが複数の敵と同時に交戦することも、単独のターゲットにすべての兵器を投入することもできるという、戦略的柔軟性であろう。<br /><br />イージスは逃げも隠れもしない。その威容と兵器は敵を震え上がらせ、味方を奮い立たせる。イージスの操縦手はいずれも高度な訓練を受けた、同胞から尊敬される兵士たちである。なぜなら、イージスは常に攻撃の矢面に立って強烈な攻撃を繰り出し、仲間たちを救ってくれるからだ。こうして誰もが、戦場を闊歩するこの巨人の力を思い知るのである。</div>
	</div>
</asp:Content>

