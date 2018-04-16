<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: D&eacute;g&acirc;ts en combat</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">D&eacute;g&acirc;ts en combat</div>
	<div class="contentwide">
		<h2>R&eacute;sum&eacute; :</h2><div class="infobox">Une unit&eacute; en pleine sant&eacute; poss&egrave;de 100 points de vie. Lorsqu'elle subit des d&eacute;g&acirc;ts en combat, elle perd une partie de ces PV. Si ces derniers tombent &agrave; z&eacute;ro, l'unit&eacute; est d&eacute;truite. Une unit&eacute; ayant subi des d&eacute;g&acirc;ts est plus faible qu'une unit&eacute; en pleine sant&eacute;, et elle est &eacute;galement plus proche de la destruction. <br />Une unit&eacute; bless&eacute;e est moins efficace &agrave; l'attaque qu'une autre en pleine sant&eacute;. Moins l'unit&eacute; a de PV, moins son attaque, qu'elle soit en combat rapproch&eacute; ou &agrave; distance, infligera de d&eacute;g&acirc;ts &agrave; sa cible. La formule math&eacute;matique est un brin plus complexe, mais notez que la r&egrave;gle empirique est la suivante : les d&eacute;g&acirc;ts inflig&eacute;s par une unit&eacute; sont r&eacute;duits de la moiti&eacute; du pourcentage de PV qu'elle a perdus. Autrement dit, une unit&eacute; ayant perdu 50 PV (soit 50%) infligera 25% de d&eacute;g&acirc;ts en moins, et une unit&eacute; ayant perdu 90 PV (90%), 45% de en moins.</div>
	</div>
</asp:Content>

