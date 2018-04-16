<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 일꾼</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">일꾼</div>
	<img src="/civilopediabe/images/large/UNIT_WORKER.png" alt="일꾼" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">60 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		<h2>이동:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('거주지');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">민간인 유닛으로, 육지 및 바다에 각종 시설을 건설하여 타일의 효율성을 높입니다.</div>
		<h2>전략:</h2><div class="infobox">도로, 매그레일을 놓고 농장, 광산 등의 시설을 건설하는 유닛입니다. 방어 능력이 없으므로 위험한 영토에 있을 때는 군사 유닛을 붙여주어야 합니다.</div>
		<h2>역사</h2><div class="infobox">이주단이 콜로니의 심장이라면 일꾼은 콜로니의 피라고 할 수 있습니다. 일꾼은 시설을 지어 콜로니가 지형을 활용할 수 있게 해줍니다. 또한 일꾼은 지형에서 독기를 제거하여 땅의 활용도를 높이기도 합니다. 콜로니가 기술을 발전시키면 일꾼의 기술도 덩달아 발전하여 나중에는 독기를 추가하거나 테라스케이프 시설을 건설할 수도 있습니다.</div>
	</div>
</asp:Content>

