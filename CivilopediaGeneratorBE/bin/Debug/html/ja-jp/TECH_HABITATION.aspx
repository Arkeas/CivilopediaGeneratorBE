<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 居住区</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">居住区</div>
	<img src="/civilopediabe/images/large/TECH_HABITATION.png" alt="居住区" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">50 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>解除されるユニット:</h2><div class="infobox"><a href="UNIT_WORKER.aspx" onmouseover="return tooltip('ワーカー');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_WORKER.png" /></a><a href="UNIT_EXPLORER.aspx" onmouseover="return tooltip('エクスプローラー');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_EXPLORER.png" /></a><a href="UNIT_MARINE.aspx" onmouseover="return tooltip('兵士');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_MARINE.png" /></a></div>
		<h2>解除される建造物:</h2><div class="infobox"><a href="BUILDING_RELIC.aspx" onmouseover="return tooltip('かつての地球の遺物');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_RELIC.png" /></a><a href="BUILDING_CLINIC.aspx" onmouseover="return tooltip('クリニック');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_CLINIC.png" /></a></div>
        
		
		
		
	</div>	
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox"><span class="color_highlight_building">クリニック</span>および<span class="color_highlight_building">かつての地球の遺物</span>を建設できるようになります。<span class="color_highlight_unit">ワーカー</span>、<span class="color_highlight_unit">エクスプローラー</span>、および<span class="color_highlight_unit">兵士</span>を生産できるようになります。</div>
		<h2>特殊能力:</h2><div class="infobox">河川に橋を架けることが可能になります。<br /></div>
		<h2>引用:</h2><div class="infobox">「かつて我々は、自分たちの運命は神に委ねられていると信じていた。だが、世界の本質を知るにつれ、その考えを改めた。今や自分の運命は自分自身の手に握られている。元に戻らないことを願う」<br />- 作者不明</div>
		<h2>歴史</h2><div class="infobox">食料と水と並び、人間にとって不可欠なのは住居である。21世紀に至るまで、人類の住居は日干しレンガの小屋、厚い壁の城、コンクリートの高層ビル、そして自己建造されるプレハブの構造体へと進歩を遂げてきた。後者の構造体は、海面上昇による人工離散のために発生した住居不足を緩和するために開発されたものだが、"種まき"期のコロニー事業においても採用された。もちろん、新世界における"存続可能"な住居というのは、入植者にとって単なる住まいに留まらない。倉庫、文化施設、行政用建造物なども含まれた。プレハブ住居の完成後にまず計画されたのが、これらの建物だった。</div>
	</div>
</asp:Content>

