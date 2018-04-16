<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Исследователь</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Исследователь</div>
	<img src="/civilopediabe/images/large/UNIT_EXPLORER.png" alt="Исследователь" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">40 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Бой:</h2><div class="infobox">6 <img src="/civilopediabe/images/strength.png" alt="strength" /></div>
		
		
		<h2>Передвижение:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_HABITATION.aspx" onmouseover="return tooltip('Среда обитания');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_HABITATION.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Исследовательский юнит. Идеален для разведки местности, обнаружения врагов и инопланетян. Обладает небольшой боевой мощью и скромными возможностями для защиты; не подходит для полномасштабных боевых действий.</div>
		<h2>Описание:</h2><div class="infobox">Этот юнит исследует местность и может строить экспедиционные площадки на клетках с артефактами.</div>
		<h2>История</h2><div class="infobox">Исследователи занимаются разведкой. Они быстро передвигаются, и убирают "туман войны", но, в отличие от разведчиков, также играют роль археологов. Они могут вести раскопки в заброшенных поселениях, руинах предтеч и откапывать скелеты инопланетных червей и даже обломки спутников. Все это дает колонии определенные бонусы.</div>
	</div>
</asp:Content>

