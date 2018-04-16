<%@ Page Title="" Language="VB" MasterPageFile="Terrains.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 河流</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">河流</div>
	<img src="/civilopediabe/images/large/FEATURE_RIVER.png" alt="河流" class="contentimage" />
	<div class="contentleft">
		<h2>產出：</h2><div class="infobox">1</span> <img src="/civilopediabe/images/energy.png" alt="energy" />能源</div>
		<h2>移動力值消耗：</h2><div class="infobox">所有剩餘點數 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		<h2>戰鬥修正值：</h2><div class="infobox">-20%</div>
		
		
	</div>
	<div class="contentright">
		
		<h2>遊戲資訊：</h2><div class="infobox">由城市改良時，鄰近河流的單元格會獲得 1 能源的加成。此外，河流是淡水來源，允許相鄰的丘陵和苔原建設農場。穿越河流時，單位會耗用所有的移動值。如果單元格是由道路或磁浮軌道連接則不適用此規則。最後，單位跨越河流進行攻擊時，會遭受 -20% 的減益。</div>
	</div>
</asp:Content>

