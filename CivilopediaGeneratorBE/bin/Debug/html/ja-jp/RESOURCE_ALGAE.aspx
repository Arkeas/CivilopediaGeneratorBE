<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 藻</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">藻</div>
	<img src="/civilopediabe/images/large/RESOURCE_ALGAE.png" alt="藻" class="contentimage" />
	<div class="contentleft">
		<h2>生産:</h2><div class="infobox">1</span><img src="/civilopediabe/images/food.png" alt="food" />食料</div>
		
		<h2>見つかる場所:</h2><div class="infobox"><a href="TERRAIN_COAST.aspx" onmouseover="return tooltip('近海');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_COAST.png" /></a></div>
		<h2>活用施設:</h2><div class="infobox"><a href="IMPROVEMENT_WORK_BARGE.aspx" onmouseover="return tooltip('作業用はしけ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_WORK_BARGE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>歴史</h2><div class="infobox">地球上の藻類はあらゆる海に生息する、独立栄養型のシンプルな真核生物で、その形状は単細胞の珪藻類から、全長60メートルにまで成長する巨大なコンブ類まで様々である。"種まき"以前の地球では、"大いなる過ち"の後遺症である環境汚染が数世紀に渡って続いたため、藻類の多様性は失われ、生息数も激減していたが、この惑星においては、藻類は今も豊富に存在しており、様々な形状のものが見つかる。基本的には水深100メートル未満の浅海域に生息しており、沿岸の居留地では入植後まもなく、藻類――とりわけ海草類やコンブの収穫が始まっている。藻類は優れた食料源であるほか、肥料や染料、寒天、アルギン酸塩の原料にもなる。また、パン・アジア連盟のコロニーの科学者たちは、この星の藻類を再利用可能なバイオ燃料として活用する、様々な方法を編み出すと共に、200年前に地球で始まったものの、藻類の生息数減少によりコストが上昇し、棚上げされてしまっていた数々の研究にも取り組んできた。もっとも、オメガ3脂肪酸を大量に含む藻類は主に食用に供されており、とりわけ地球の食文化をこの新たな星へと持ち込んだ多くのコロニーで、大量に消費されている。</div>
	</div>
</asp:Content>

