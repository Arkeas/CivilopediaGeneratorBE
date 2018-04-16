<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 通信</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">通信</div>
	<img src="/civilopediabe/images/large/TECH_COMMUNICATIONS.png" alt="通信" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">770 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>解除されるユニット:</h2><div class="infobox"><a href="UNIT_TACNET_HUB.aspx" onmouseover="return tooltip('戦術ネットハブ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_TACNET_HUB.png" /></a></div>
		<h2>解除される建造物:</h2><div class="infobox"><a href="BUILDING_COMMAND_CENTER.aspx" onmouseover="return tooltip('司令部');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_COMMAND_CENTER.png" /></a><a href="BUILDING_FEEDSITE_HUB.aspx" onmouseover="return tooltip('フィードサイトハブ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_FEEDSITE_HUB.png" /></a></div>
        
		
		<h2>ワーカー許容アクション:</h2><div class="infobox"><a href="IMPROVEMENT_ARRAY.aspx" onmouseover="return tooltip('アレイの建設');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_ARRAY.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox"><span class="color_highlight_building">司令部</span>と<span class="color_highlight_building">フィードサイトハブ</span>を建設できるようになります。軌道ユニット<span class="color_highlight_unit">戦術ネットハブ</span>を生産できるようになります。ワーカーは<span class="color_highlight_improvement">アレイ</span>の資源活用施設を建設できるようになります。</div>
		
		<h2>引用:</h2><div class="infobox">「コミュニケーションにおける機微でもっとも高度なのは"知らなかった"と"知っているけど気にしない"の違いである」<br />- エロディ『発言集』</div>
		<h2>歴史</h2><div class="infobox">人類が文字を発明し、個人の記憶を外部に保存することが可能になった時から、ワールドワイドウェブが実用化され、いかに無味乾燥な妄想であろうとも、個人の体験が共有されるようになった時代まで、かつての地球においては情報の伝達が重要な意味を持っていた。この惑星の民間研究においては、伝達速度の向上、"ノイズ"の減少、そしてアクセスの容易さに重点が置かれてきた。それに対して、軍事通信では、指令と制御、傍受と妨害、そして安全性に焦点が絞られている。自律型コンピューターに防衛を任せることに不安を感じる軍人たちは、通信技師たちに新技術の開発を依頼した。そこで開発されたのが、対流圏散乱、相互運用可能なネット中心のシステム、取得誘導、および地震通信の技術発展を通じて、彼らが好む"機械通信"を改善するために、惑星の電磁気的および地質的特性を利用する方法であった。</div>
	</div>
</asp:Content>

