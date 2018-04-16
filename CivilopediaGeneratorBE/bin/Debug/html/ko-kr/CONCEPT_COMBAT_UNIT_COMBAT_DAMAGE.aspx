<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 전투 피해</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">전투 피해</div>
	<div class="contentwide">
		<h2>요약:</h2><div class="infobox">온전한 상태에서 유닛은 100의 '체력(HP)'을 지닙니다. 전투에서 피해를 받게 되면 체력이 떨어지며, 체력이 0이 되면 유닛은 파괴됩니다. 피해를 받은 유닛은 온전한 유닛보다 약하며 더욱 쉽게 파괴됩니다.<br />피해를 받은 유닛은 온전한 상태의 유닛보다 공격력이 더 낮습니다. 피해를 많이 받을수록 적을 상대로 한 근접 또는 원거리 공격력이 떨어집니다. 실제 공식은 이것보다 더 복잡하지만 일반적으로 유닛의 공격력은 체력 감소 비율의 절반만큼 감소합니다. 즉, 체력이 50만큼 감소(50%)한 유닛은 공격력이 25%만큼 감소하고, 체력이 90만큼 감소(90%)한 유닛은 공격력이 45%만큼 감소합니다.</div>
	</div>
</asp:Content>

