<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Антигравиевый карьер</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Антигравиевый карьер</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_FLOAT_STONE_QUARRY.png" alt="Антигравиевый карьер" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Производительность:</h2><div class="infobox">+3 к <img src="/civilopediabe/images/energy.png" alt="energy" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/floatstone.png" alt="floatstone" /> {5_ObjectDesc[2]}</div>
		
		
		<h2>Улучшение ресурсов:</h2><div class="infobox"><a href="RESOURCE_FLOAT_STONE.aspx" onmouseover="return tooltip('Антигравий');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_FLOAT_STONE.png" /></a></div>
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_TERRAFORMING.aspx" onmouseover="return tooltip('Терраформирование');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_TERRAFORMING.png" /></a></div>
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Благодаря карьерам и каменоломням колония может добывать на новой планете ценные камни и минералы. Действующие улучшения не только повышают уровень производства, но и дают доступ к антигравию - исключительно ценному минералу, молекулярная плотность которого позволяет нейтрализовать силу планетарного притяжения.</div>
	</div>
</asp:Content>

