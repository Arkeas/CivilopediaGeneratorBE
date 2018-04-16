<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: ロボット工学</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">ロボット工学</div>
	<img src="/civilopediabe/images/large/TECH_ROBOTICS.png" alt="ロボット工学" class="contentimage" />
	<div class="contentleft">
		<h2>コスト:</h2><div class="infobox">380 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		<h2>解除されるユニット:</h2><div class="infobox"><a href="UNIT_AIR_FIGHTER.aspx" onmouseover="return tooltip('戦闘機');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/UNIT_AIR_FIGHTER.png" /></a></div>
		<h2>解除される建造物:</h2><div class="infobox"><a href="BUILDING_AUTOPLANT.aspx" onmouseover="return tooltip('オートプラント');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_AUTOPLANT.png" /></a></div>
        
		
		<h2>ワーカー許容アクション:</h2><div class="infobox"><a href="IMPROVEMENT_FIRAXITE_MINE.aspx" onmouseover="return tooltip('フィラクサイト鉱山の建設');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_FIRAXITE_MINE.png" /></a><a href="IMPROVEMENT_MANUFACTORY.aspx" onmouseover="return tooltip('複合工場を建設');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_MANUFACTORY.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox"><span class="color_highlight_building">オートプラント</span>を建設できるようになります。軍事ユニット<span class="color_highlight_unit">戦闘機</span>を生産できるようになります。ワーカーは<span class="color_highlight_improvement">フィラクサイト鉱山</span>および<span class="color_highlight_improvement">複合工場</span>の資源活用施設を建設できるようになります。</div>
		
		<h2>引用:</h2><div class="infobox">「ロボットは文句を言わず、質問せず、休憩しない。君たちも見習うのだ」<br />- ワジーム・コズロフ『中央司令部議事録名言集』</div>
		<h2>歴史</h2><div class="infobox">ロボット工学の分野は"種まき"の頃から既に高度に発達しており、ロボットは人類の太陽系探索において広範に用いられていた。惑星降下以降の、機械製造技術、電子工学、そしてコンピューター科学の劇的な進歩や、言うまでもなく新世界の人口がまだ少ない事実を鑑みれば、ロボット工学の研究が同様に劇的なものになるのは当然の帰結であった。半自律的な農業、採鉱、そして製造ロボットから、人工知能を持った人型のヒューマノイドまで、ロボットはすべてのコロニーにおいて生活の一部となっており、その数はあまり気に留められていない。ロボットに関する研究はより堅牢な構造とすることに焦点が置かれており、人間にとって危険が大きいような状況での仕事を、更に委任できることが求められている。一方、育児や基本医療のような、多くの時間を要するサービス産業においては、ヒューマノイドに任せられるようになっている。</div>
	</div>
</asp:Content>

