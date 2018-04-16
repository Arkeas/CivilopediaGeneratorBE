<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 다수 턴 이동 명령</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">다수 턴 이동 명령</div>
	<div class="contentwide">
		<h2>요약:</h2><div class="infobox">유닛이 여러 턴에 걸쳐 지정한 위치로 가는 경우, 해당 위치에 도착하거나 다른 지시를 받을 때까지 유닛은 턴마다 가장 짧은 경로를 선택하여 이동합니다.<br /><br />유닛이 지정한 위치로 갈 수 없게 되면(탐험을 통해 지정한 타일이 바다 건너이거나 이동 유닛이 승선할 수 없거나 해당 위치에 이미 다른 유닛이 있는 경우) 유닛은 이동을 멈추고 새 명령을 기다립니다.</div>
	</div>
</asp:Content>

