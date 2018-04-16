<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 이주단</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">이주단</div>
	<img src="/civilopediabe/images/large/UNIT_SETTLER.png" alt="이주단" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">80 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		<h2>이동:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_PIONEERING.aspx" onmouseover="return tooltip('개척');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PIONEERING.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>게임 정보:</h2><div class="infobox">전초기지를 건설하는 민간 유닛입니다. 전초기지는 시간이 흐르면서 주변의 영토를 병합하여 온전한 도시로 성장합니다.<br /><br />이 유닛을 생산하는 동안에는 도시의 <img src="/civilopediabe/images/food.png" alt="food" /> 성장이 일시적으로 중지됩니다.</div>
		
		<h2>역사</h2><div class="infobox">이주단은 모든 콜로니의 심장이라고 할 수 있습니다. 험난한 환경 어딘가에 전초기지를 세울 수 있다는 희망을 안고 이 새로운 세계의 위험에 뛰어드는 유닛은 이주단뿐이기 때문입니다. 이렇게 힘들여 건설한 전초기지는 시간이 흐르면 성장하여 도시가 됩니다. 하지만 실패할 경우 전초기지의 거주자들은 목숨을 잃을 수밖에 없습니다. 콜로니가 확장과 성장을 할 수 있는 것은 이주단의 용기와 희생 덕분입니다.</div>
	</div>
</asp:Content>

