<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Молекулярный цех</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Молекулярный цех</div>
	<img src="/civilopediabe/images/large/BUILDING_MOLECULAR_FORGE.png" alt="Молекулярный цех" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">390 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		<h2>Пища:</h2><div class="infobox">+5 <img src="/civilopediabe/images/food.png" alt="food" /> </div>
		
		
		
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_BIOENGINEERING.aspx" onmouseover="return tooltip('Биотехнология');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_BIOENGINEERING.png" /></a></div>
		
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_harmony_affinity">уровень 8 <img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		
		
		<h2>История</h2><div class="infobox">Для создания некоторых материалов требуется длительное время. Они выращиваются молекула за молекулой в строго контролируемых условиях. Другие материалы, с достаточно сложными компонентами, создаются с применением специальных методов молекулярного производства. Такие материалы изготавливаются в цехах, изолированных от внешних загрязнений и стресс-факторов окружающей среды. Это позволяет создавать медленно растущие кристаллические материалы высочайшей чистоты с максимально возможной скоростью. В самых сложных кузницах камеры для выращивания изолируются от сейсмических толчков, звездного излучения и даже слабых электромагнитных искажений, создаваемых нервными системами живых существ. Дефекты материалов, создаваемых в этих высокоизолированных камерах, обычно образуются вследствие квантовых флуктуаций, и поэтому являются предметом для всестороннего исследования учеными и инженерами-материаловедами.</div>
	</div>
</asp:Content>

