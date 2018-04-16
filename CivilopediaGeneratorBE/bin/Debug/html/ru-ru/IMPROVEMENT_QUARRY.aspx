<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Каменоломня</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Каменоломня</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_QUARRY.png" alt="Каменоломня" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>Производительность:</h2><div class="infobox">+1 к <img src="/civilopediabe/images/production.png" alt="production" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/basalt.png" alt="basalt" /> {5_ObjectDesc[2]}</div>
		
		
		<h2>Улучшение ресурсов:</h2><div class="infobox"><a href="RESOURCE_BASALT.aspx" onmouseover="return tooltip('Базальт');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_BASALT.png" /></a></div>
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Благодаря карьерам и каменоломням колония может добывать на новой планете ценные камни и минералы. Действующие улучшения не только повышают уровень производства, но и дают доступ к антигравию - исключительно ценному минералу, молекулярная плотность которого позволяет нейтрализовать силу планетарного притяжения.</div>
	</div>
</asp:Content>

