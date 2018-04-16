﻿<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Как строить дополнительные города</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Как строить дополнительные города</div>
	<div class="contentwide">
		<h2>Краткий обзор:</h2><div class="infobox">Единственное созидающее действие, доступное поселенцу, - это постройка аванпоста, который затем превращается в город. После строительства аванпоста поселенец исчезнет из игры. Любые две площадки для строительства населенных пунктов должны находиться друг от друга на определенной дистанции, однако для аванпостов это расстояние составляет всего три клетки. Это позволяет превращать аванпосты в города, не соперничая с аванпостами конкурентов, и в то же время располагать их достаточно близко для последующего частичного захвата клеток города конкурента.<br /><br />Аванпост начинает свое развитие лишь с одной занятой клеткой прилегающей территории, которая выбирается из незанятых клеток рядом с аванпостом, считающихся наиболее ценными. Эта клетка может обрабатываться аванпостом, но у территории аванпоста есть определенные ограничения, что отличает его от обычного города.<br /><br />Постепенно аванпост захватит соседние пять клеток рядом с первоначальной клеткой (если они, конечно, еще никем не захвачены). Этот процесс происходит автоматически с минимальной скоростью (хотя в некоторых случаях его можно ускорить), аналогично тому, как развитие культуры приводит к расширению территории города. После того как аванпост займет последнюю соседнюю клетку, он сразу превратится в город, приобретая все возможности и характеристики городской системы.</div>
	</div>
</asp:Content>
