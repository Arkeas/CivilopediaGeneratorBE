<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 銅</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">銅</div>
	<img src="/civilopediabe/images/large/RESOURCE_COPPER.png" alt="銅" class="contentimage" />
	<div class="contentleft">
		<h2>生産:</h2><div class="infobox">1</span><img src="/civilopediabe/images/energy.png" alt="energy" />エネルギー</div>
		
		<h2>見つかる場所:</h2><div class="infobox"><a href="TERRAIN_GRASS.aspx" onmouseover="return tooltip('草原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_GRASS.png" /></a><a href="TERRAIN_PLAINS.aspx" onmouseover="return tooltip('平原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_PLAINS.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('ツンドラ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('氷土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a></div>
		<h2>活用施設:</h2><div class="infobox"><a href="IMPROVEMENT_MINE.aspx" onmouseover="return tooltip('鉱山');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_MINE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>歴史</h2><div class="infobox">原子量63.5、原子番号29の展延性金属である銅は、高い熱伝導率と電気伝導率を有する金属である。地球と同じくこの星でも、呼吸酵素(狭義にはチトクロム酸化酵素)の主成分を構成する、生命維持に欠かせないミネラルである。可鍛性である銅は、地球では古くから武器、装飾、硬貨、建築材などあらゆる用途に用いられ、合金の母材としても重宝された。この惑星でも地表に銅の巨大鉱床が見つかっており、その高い導電性から、集積回路や回路基板、マグネトロンに欠かせない素材となっている。また、放熱性に優れるため、アルミニウムの代わりに吸熱器（ヒートシンク）や熱交換器などにも応用される。地球では一般的な金属が稀少であるせいか、コロニーの住宅の多くは、比較的安価な銅製のワイヤーや配管を用いている。導電性や抗張力、耐腐食性、耐クリープ性、低熱膨張性、そして製錬容易性など、多くの有益な特性を持つことから、惑星探査班が着陸後、最初に取りかかるミッションが銅鉱床の発見である。"大いなる過ち"前の数十年間では、様々なバクテリアやアデノウイルス、花粉、菌類に対する銅の抗菌性も発見されており、惑星内では現在、銅をゼノマス由来の瘴気の中和剤として活用する研究が、初期実験での成功を受けて急ピッチで進められている。</div>
	</div>
</asp:Content>

