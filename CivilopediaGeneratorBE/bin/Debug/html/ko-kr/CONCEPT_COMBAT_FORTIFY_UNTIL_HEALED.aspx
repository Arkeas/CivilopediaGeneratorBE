<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: '회복할 때까지 방어 태세' 버튼</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">'회복할 때까지 방어 태세' 버튼</div>
	<div class="contentwide">
		<h2>요약:</h2><div class="infobox">유닛이 피해를 받으면 '회복할 때까지 방어 태세' 버튼이 나타납니다. 이 버튼을 클릭하면 해당 유닛은 완전히 회복될 때까지 현재 위치에서 방어 태세를 취합니다.<br /><br />피해 회복량은 유닛의 위치에 따라 달라집니다.<br />유닛이 도시에 있으면 턴마다 30만큼 체력을 회복합니다.<br />우호 지역에 있는 유닛은 턴마다 20만큼 체력을 회복합니다.<br />중립 지역이나 적 지역에 있는 유닛은 턴마다 10만큼 체력을 회복합니다.<br /><br />특정 업그레이드, 건물, 시설을 통해 유닛의 회복 속도를 높일 수도 있습니다.</div>
	</div>
</asp:Content>

