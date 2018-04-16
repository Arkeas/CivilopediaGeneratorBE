<%@ Page Title="" Language="VB" MasterPageFile="Units.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Поселенец</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Поселенец</div>
	<img src="/civilopediabe/images/large/UNIT_SETTLER.png" alt="Поселенец" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">80 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		
		
		
		<h2>Передвижение:</h2><div class="infobox">2 <img src="/civilopediabe/images/moves.png" alt="moves" /></div>
		
		
		
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_PIONEERING.aspx" onmouseover="return tooltip('Первооткрывательство');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PIONEERING.png" /></a></div>
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">Гражданский юнит. Может основать аванпост, который со временем превращается в город, после того как займет всю прилегающую территорию.<br /><br />Во время создания этого юнита <img src="/civilopediabe/images/food.png" alt="food" /> рост города приостанавливается.</div>
		
		<h2>История</h2><div class="infobox">Поселенцы - душа любой колонии. Только поселенцы готовы рискнуть и высадиться на новой планете, в надежде построить где-нибудь аванпост. Этот аванпост при удачном стечении обстоятельств рано или поздно превратится в город. В противном случае его жители дорого заплатят за неудачу. Именно храбрость и самопожертвование поселенцев позволяют колонии расти и расширяться.</div>
	</div>
</asp:Content>

