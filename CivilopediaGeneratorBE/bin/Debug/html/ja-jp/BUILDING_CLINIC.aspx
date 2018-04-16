<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: クリニック</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">クリニック</div>
	<img src="/civilopediabe/images/large/BUILDING_CLINIC.png" alt="クリニック" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">60 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>維持費:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		<h2>健康: </h2><div class="infobox">+1 <img src="/civilopediabe/images/health.png" alt="health" /></div>
		
		
		
		<h2>科学力:</h2><div class="infobox">+1 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>必要なテクノロジー:</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('居住区');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
		
	</div>
	<div class="contentright">
		
		
		<h2>歴史</h2><div class="infobox">クリニックは小規模コミュニティにおいて、主要な医療サービスを提供する小診療所である。21世紀末、多くの病院はオートメーション化され、診断プログラムでは病気や怪我を特定できない場合のみ、ネットワークシステムを介して医師や看護師が招集される仕組みになっていた。自動調剤機(コンピューター管理による薬品保管庫)、外科用マイクロボット、遠隔医療ステーション、バイタルモニター付きスマートベッド、自動ポイント・オブ・ケア診断装置など、医療技術の進化によって、あらゆる外来患者や短期ケアが必要な患者の治療が可能になった。こうした医療器具は、必ずしもコロニーへ持ち込まれることはなかったが、ソフトウェアや製造仕様書の携行は義務付けられていた。この星でも、入植開始後最初の数年間は、様々な危険や病気の情報が爆発的に広まり、クリニックはコロニーの人口の安定的増加という面で大きく貢献した。例えば瘴気中毒の治療法は、コロニーのクリニック間でリンクされる医療データベースを介してすぐさま共有され、結果的に多くの命が救われた。大規模なコロニーでは最終的に、医療スタッフの常駐する病院に取って代わったとはいえ、多くの地域や集落においては現在も、クリニックが重宝されている。</div>
	</div>
</asp:Content>

