<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 珊瑚</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">珊瑚</div>
	<img src="/civilopediabe/images/large/RESOURCE_CORAL.png" alt="珊瑚" class="contentimage" />
	<div class="contentleft">
		<h2>生産:</h2><div class="infobox"><img src="/civilopediabe/images/culture.png" alt="culture" />文化力1</div>
		
		<h2>見つかる場所:</h2><div class="infobox"><a href="TERRAIN_COAST.aspx" onmouseover="return tooltip('近海');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_COAST.png" /></a></div>
		<h2>活用施設:</h2><div class="infobox"><a href="IMPROVEMENT_WORK_BARGE.aspx" onmouseover="return tooltip('作業用はしけ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_WORK_BARGE.png" /></a></div>
	</div>
	<div class="contentright">
		
		<h2>歴史</h2><div class="infobox">石灰岩や石灰質頁岩帯に発生する床板珊瑚は、地球では二畳紀後期に絶滅(イシ珊瑚と取って代わった)しているが、石炭紀にあるこの新しい惑星においては今も繁茂しており、こうした珊瑚が浅海域に群生している。珊瑚は筒状構造を持つ動物で、下部は安定した表面と接地し、上部は餌を採るための小さな触手に覆われている。この星の珊瑚は最大直径30ミリほどで、年齢や餌の採れぐあい、水温によって誤差はあるが、だいたい一年で半ミリほど成長する。方解石の外骨格を持つ床板珊瑚は、広範にわたって低い隆起を形成し、または珊瑚礁のように群生し、付近には様々な塩水ウニや腕足動物、二枚貝、腹足類などが生息する。一部の床板珊瑚は、その触手を使って、小型の無脊椎動物やプランクトンを捕捉するが、大半は光合成を行う藻類を餌にしている。地球の珊瑚、というか珊瑚礁に蓄積するその骨は、宝石や化粧品などに広く用いられ、一部の地域(東アフリカなど)では建設用石灰の原料にもなっていたが、これらは多くの入植地において現在も同様である。もっとも、ポリストラリアの環境学者たちの研究から、収益性に優れる、商業的スケールでの珊瑚の養殖法が発見されている。</div>
	</div>
</asp:Content>

