<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 이동력 사용</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">이동력 사용</div>
	<div class="contentwide">
		<h2>요약:</h2><div class="infobox">이동력은 유닛이 타일에 들어갈 때 소모되며 타일의 지형에 따라 이동 시 소모되는 이동력이 결정됩니다. 타일을 벗어날 때는 이동력이 소모되지 않으며, 들어가려는 타일에 소모되는 이동력만 계산됩니다.<br /><br />일반적으로 초원이나 평원같이 개방된 지형은 입장할 때 이동력을 1만큼 소모하며, 숲이나 언덕은 2만큼 소모합니다. 강을 건널 때는 유닛의 모든 이동력을 소모합니다.<br /><br />이동력이 남은 유닛은 항상 다음 타일로 한 칸 이동할 수 있습니다. 이동력이 남아 있는 한 소모되는 이동력이 얼마가 되든 타일로 들어가는 것은 문제가 없습니다. 이동력을 모두 소모하면 다음 턴까지 유닛도 정지합니다.</div>
	</div>
</asp:Content>

