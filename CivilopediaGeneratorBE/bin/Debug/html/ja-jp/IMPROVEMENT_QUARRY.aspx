﻿<%@ Page Title="" Language="VB" MasterPageFile="Improvements.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 採石場</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">採石場</div>
	<img src="/civilopediabe/images/large/IMPROVEMENT_QUARRY.png" alt="採石場" class="contentimage" />
	<div class="contentleft">
		
		
		<h2>生産:</h2><div class="infobox"><img src="/civilopediabe/images/production.png" alt="production" /> 生産: +1 (<img src="/civilopediabe/images/basalt.png" alt="basalt" /> 玄武岩から)</div>
		
		
		<h2>活用可能な資源:</h2><div class="infobox"><a href="RESOURCE_BASALT.aspx" onmouseover="return tooltip('玄武岩');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/RESOURCE_BASALT.png" /></a></div>
		
		
	</div>
	<div class="contentright">
		<h2>ゲーム情報:</h2><div class="infobox">コロニーは採石場の活用を通じて異星の岩盤を切り崩し、稀少な鉱石を入手することができる。稼働中の採石場は生産力を高めるだけでなく、その分子密度によって重力の法則を相殺する極めて貴重な鉱物、浮遊石も、人類にもたらしてくれる。</div>
	</div>
</asp:Content>

