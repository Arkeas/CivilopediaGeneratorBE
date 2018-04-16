<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 채석장</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">채석장</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_QUARRY.png" alt="채석장" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>생산:</h2><div class="infobox"><img src="/civilopediabe/images/basalt.png" alt="basalt" /> 현무암(으)로부터 +1 <img src="/civilopediabe/images/production.png" alt="production" /> 생산력</div>
		
		
		<h2>시설이 가능한 자원:</h2><div class="infobox"><a href="RESOURCE_BASALT.aspx" onmouseover="return tooltip('현무암');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_BASALT.png" /></a></div>
		
		
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">콜로니는 채석장을 이용하여 외계에서 귀중한 돌과 광물을 얻을 수 있습니다. 현재 운영 중인 채석장은 생산력을 높일 뿐만 아니라, 중력의 법칙을 상쇄시킬 수 있는 분자 밀도를 지닌 매우 소중한 광물인 부양석을 얻을 수도 있습니다.</div>
	</div>
</asp:Content>

