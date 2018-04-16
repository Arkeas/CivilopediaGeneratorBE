<%@ Page Title="" Language="VB" MasterPageFile="Technologies.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Ecologia</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Ecologia</div>
	<img src="/civilopediabe/images/large/TECH_ECOLOGY.png" alt="Ecologia" class="contentimage" />
	<div class="contentleft">
		<h2>Costo:</h2><div class="infobox">95 <img src="/civilopediabe/images/research.png" alt="research" /></div>
		
		
		
		<h2>Edifici sbloccati:</h2><div class="infobox"><a href="BUILDING_VIVARIUM.aspx" onmouseover="return tooltip('Vivarium');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_VIVARIUM.png" /></a><a href="BUILDING_ULTRASONIC_FENCE.aspx" onmouseover="return tooltip('Barriera ultrasonica');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/BUILDING_ULTRASONIC_FENCE.png" /></a></div>
        
		
		<h2>Azioni permesse:</h2><div class="infobox"><a href="CONCEPT_WORKERS_CLEARINGLAND.aspx" onmouseover="return tooltip('Ripulisci miasma');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAFORM_CLEAR_MIASMA.png" /></a></div>
		
	</div>	
	<div class="contentright">
		<h2>Informazioni sulla partita:</h2><div class="infobox">Permette la costruzione degli edifici <span class="color_highlight_building">Vivarium</span> e <span class="color_highlight_building">Barriera ultrasonica</span> e dell'unit&agrave; orbitante <span class="color_highlight_unit">Repulsore miasmatico</span>.</div>
		
		<h2>Citazione:</h2><div class="infobox">"Quando Coyote apprese di essere l'unico della sua specie sul nuovo pianeta, il suo ululato echeggiò lungo i crepacci fino a raggiungere le colline lontane."<br />- Le Storie di Zio Mai-clonato</div>
		<h2>Storia:</h2><div class="infobox">A causa della sua innata interdisciplinariet&agrave;, la nascita della scienza dell'ecologia si può far risalire al XVIII secolo, per opera di diversi studiosi quali Alexander von Humboldt, James Hutton e Jean-Baptiste Lamarck. Verso la met&agrave; del XX secolo questa "scienza", fino ad allora praticamente ignorata, iniziò a conoscere un rapido sviluppo, dovuto ai timori dei politici e della popolazione generale relativi all'espansione demografica fuori controllo, alla limitatezza delle risorse naturali, ai cambiamenti climatici e alla scomparsa degli habitat naturali. Il Grande Errore portò l'ecologia in primissimo piano sul fronte della scienza applicata. Gli esperti di ecologia hanno così avuto un ruolo rilevante nella progettazione delle missioni degli sponsor delle colonie: la speranza era che le loro ricerche avrebbero impedito su questo nuovo pianeta il ripetersi dei problemi che avevano mandato in frantumi l'ecosistema terrestre.</div>
	</div>
</asp:Content>

