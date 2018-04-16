<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: エクスプローラー</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">エクスプローラー</div>
	<img src="/civilopediabe/images/large/UNIT_EXPLORER.png" alt="エクスプローラー" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">40 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>戦闘力:</h2><div class="infobox">6 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>移動力:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('居住区');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">探検ユニットです。地形、対抗勢力、エイリアンの動きを偵察するのに適しています。軽度の戦闘力によるわずかな防衛力もありますが、本格的な戦闘には向きません。</div>
		<h2>戦略:</h2><div class="infobox">このユニットはマップ内を探索し、アーティファクトに発掘現場を建設することができます。</div>
		<h2>歴史</h2><div class="infobox">エクスプローラーは世界を素早く探索して戦場の霧を晴らし、コロニーの住民に貴重な情報をもたらしてくれる、偵察兵のような存在である。もっとも、通常の偵察兵が現在の情報のみを追い求めるのに対し、エクスプローラーは過去を掘り起こすことに専念する。彼らの本質は考古学者であり、熟練の発掘技術を用いて放棄された入植地や、先人の遺跡、エイリアンワームの骨格、墜落した衛星などを調査して、コロニーに特定の恩恵を授けてくれる。</div>
	</div>
</asp:Content>

