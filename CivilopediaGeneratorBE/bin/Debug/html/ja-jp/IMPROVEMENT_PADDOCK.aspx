<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: パドック</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">パドック</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_PADDOCK.png" alt="パドック" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>生産:</h2><div class="infobox"><img src="/civilopediabe/images/production.png" alt="production" /> 生産: +1 (<img src="/civilopediabe/images/chitin.png" alt="chitin" /> キチンから)<br /><img src="/civilopediabe/images/research.png" alt="science" /> 科学: +1 (<img src="/civilopediabe/images/resilin.png" alt="resilin" /> レジリンから)</div>
		
		
		<h2>活用可能な資源:</h2><div class="infobox"><a href="RESOURCE_RESILIN.aspx" onmouseover="return tooltip('レジリン');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_RESILIN.png" /></a><a href="RESOURCE_CHITIN.aspx" onmouseover="return tooltip('キチン');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_CHITIN.png" /></a></div>
		
		
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">パドックは狩猟キャンプと牧草地の独創的なハイブリッド施設であり、伝統的な狩猟の最中に命を落とす人間が増加するにつれ、地球外入植地で積極的に導入されるようになった。基本的には自然環境を利用して野生動物をおびき寄せたのち、捕獲する、待ち受け型の狩猟ツールであり、キチンやレジリンといった資源をコロニーにもたらしてくれる。</div>
	</div>
</asp:Content>

