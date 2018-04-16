<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Рабочий</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Рабочий</div>
	<img src="/civilopediabe/images/large/UNIT_WORKER.png" alt="Рабочий" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">60 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		<h2>Передвижение:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('Среда обитания');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Гражданский юнит. Строит улучшения на суше и воде, увеличивая продуктивность клеток, обрабатываемых жителями города.</div>
		<h2>Описание:</h2><div class="infobox">Этот юнит строит обычные и магнитные дороги, а также улучшения - например, фермы и шахты. Он не может защищаться самостоятельно, поэтому при нахождении на опасной территории его следует сопровождать боевым юнитом.</div>
		<h2>История</h2><div class="infobox">Если поселенцы - душа колонии, то рабочие - ее сердце. Рабочие позволяют колонии извлекать пользу из окружающей местности, создавая улучшения. Более того, рабочие умеют удалять миазму, повышая полезные качества клеток. По мере технологического прогресса растет и эффективность рабочих: в конце концов они приобретают способность распространять миазму и даже создавать земной ландшафт. </div>
	</div>
</asp:Content>

