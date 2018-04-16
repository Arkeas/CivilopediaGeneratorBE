<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: ワーカーのアクションパネル</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">ワーカーのアクションパネル</div>
	<div class="contentwide">
		<h2>概要:</h2><div class="infobox">アクティブなワーカーユニットがそのタイルで何かできる場合(道路や資源活用施設の建設、伐採など)ワーカー専用のアクションパネルが表示されます。パネル内には、そのタイルで実行できるすべての行動が表示されます。実行したい行動をクリックすると、ワーカーが作業を開始します。作業の完了には一定の時間が必要となります。アイコンの上にカーソルを合わせれば、その作業に要するターン数を確認できます。</div>
	</div>
</asp:Content>

