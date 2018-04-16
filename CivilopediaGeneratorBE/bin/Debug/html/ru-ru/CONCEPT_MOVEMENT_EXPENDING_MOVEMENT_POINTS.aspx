﻿<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Расходование очков передвижения</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Расходование очков передвижения</div>
	<div class="contentwide">
		<h2>Краткий обзор:</h2><div class="infobox">Юниты тратят очки передвижения, чтобы войти на клетку. Ландшафт клетки определяет стоимость перемещения. Выход из клетки не стоит ничего, очки тратятся только на вход.<br /><br />Как правило, открытая местность вроде лугов или равнин требует 1 очко передвижения, тогда как в лесу и на холмах на клетку уходит 2 очка. Пересечение реки стоит всех очков передвижения юнита.<br /><br />Юнит всегда может перейти в следующую клетку, если у него остались очки передвижения. Неважно, во сколько обойдется это перемещение: пока у юнита остается хоть сколько-нибудь очков, он может войти в клетку. Когда все очки передвижения будут потрачены, юниту придется остановиться.</div>
	</div>
</asp:Content>

