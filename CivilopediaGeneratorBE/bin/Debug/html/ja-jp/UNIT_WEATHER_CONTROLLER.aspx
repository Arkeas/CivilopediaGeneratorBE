<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: ウェザーコントローラー</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">ウェザーコントローラー</div>
	<img src="/civilopediabe/images/large/UNIT_WEATHER_CONTROLLER.png" alt="ウェザーコントローラー" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">130 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		
		
		<h2>軌道ユニット効果範囲:</h2><div class="infobox">1 <img src="/civilopediabe/images/orbitalrange.png" alt="orbital range" /></div>
		<h2>軌道ユニット耐用期間:</h2><div class="infobox">60 <img src="/civilopediabe/images/orbitalduration.png" alt="orbital duration" /></div>
		<h2>必要な資源:</h2><div class="infobox"><a href="RESOURCE_PETROLEUM.aspx" onmouseover="return tooltip('石油');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_PETROLEUM.png" /></a><a href="RESOURCE_TITANIUM.aspx" onmouseover="return tooltip('チタン');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_TITANIUM.png" /></a></div>
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_CLIMATE_CONTROL.aspx" onmouseover="return tooltip('気候制御');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CLIMATE_CONTROL.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">軌道ユニットです。自タイルの<img src="/civilopediabe/images/food.png" alt="food" />食料+1。その寿命までに資源活用施設がないタイルに新たなボーナス資源を1～2つ発生させます。</div>
		
		<h2>歴史</h2><div class="infobox">ソーラーコレクターと同じくウェザーコントローラーも、軌道ネットワークを介して、入植者たちの生活を豊かにしてくれるテクノロジーである。ウェザーコントローラーは電磁波の正確な照射によって、コロニーの領内にあるすべてのタイル上に好ましい天候条件を作り出すことができる。結果的にコロニーの食料生産が最適化され、その所有する各タイルの食料貯蔵量が増加する。また、天候操作には未活用エリアの自然状態を変化させる効果もあり、場合によっては、そうしたタイルから基本資源が得られるようになる。</div>
	</div>
</asp:Content>

