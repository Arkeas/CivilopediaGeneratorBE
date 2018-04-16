<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 연구소</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">연구소</div>
	<img src="/civilopediabe/images/large/BUILDING_LABORATORY.png" alt="연구소" class="contentimage" />
	<div class="contentleft">
		<h2>비용:</h2><div class="infobox">80 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>유지:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		<h2>과학:</h2><div class="infobox">+2 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>기술 선행 조건: </h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('화학');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
		
		
		
		
	</div>
	<div class="contentright">
		
		
		<h2>역사</h2><div class="infobox">연구와 이해가 콜로니의 생존과 번영을 위한 열쇠라는 점은 자명했기 때문에, 외계 행성에 정착하는 데 필요한 많은 과학 분야마다 전용 연구실을 세우는 것은 콜로니 정부의 최우선 과제였습니다. 화학, 생물학, 지질학, 기상학과 같은 기존 과학 연구에서는 행성의 경이로움에 대해 연구하고 이를 이용하고자 했으며, 이러한 지식으로부터 새로운 과학이 출현했습니다. 콜로니 연구실에서 이루어진 미지의 자원과 식물상, 동물상에 대한 임상 조사가 다양한 분야에서 기술 및 생물학적 진보로 이어졌습니다. 발사 당시 최신 연구 장비의 시험용 모델이나 설계를 갖춘 콜로니 연구실은 효율성과 능률성을 보여준 모범 사례와도 같았습니다. 이미 방대한 과학적 데이터베이스에 수천 가지 발명과 통찰력, 응용 사례, 발견이 더해져 이 새로운 세계에서 콜로니 확장과 개척을 촉진시켰습니다. 비록 어렵게 얻은 지식이 항상 이롭지는 않았지만(어떤 개발은 의도하지 않은 유감스러운 결과를 낳기도 함) 그럼에도 불구하고 행성 도처에 세워진 연구실에서는 연구가 계속 이어지고 있습니다.</div>
	</div>
</asp:Content>

