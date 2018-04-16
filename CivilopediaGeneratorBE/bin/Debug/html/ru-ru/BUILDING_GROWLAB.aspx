<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Культивационная станция</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Культивационная станция</div>
	<img src="/civilopediabe/images/large/BUILDING_GROWLAB.png" alt="Культивационная станция" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">265 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		<h2>Пища:</h2><div class="infobox">+3 <img src="/civilopediabe/images/food.png" alt="food" /> </div>
		
		
		
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_BIOLOGY.aspx" onmouseover="return tooltip('Биология');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_BIOLOGY.png" /></a></div>
		
		
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_harmony_affinity">уровень 4 <img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">+1 к <img src="/civilopediabe/images/food.png" alt="food" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/fungus.png" alt="fungus" /> {5_ObjectDesc[2]}</div>
		
		<h2>История</h2><div class="infobox">На культивационных станциях всей планеты садоводы и ботаники стремятся ускорить и сделать эффективнее фотосинтез многих видов растений, используя для этого настои ферредоксина и хинона, а также генную инженерию. Культивационные станции сыграли важную роль в выживании нескольких поселений: именно там прошли первые эксперименты над водорослями и цианобактериями, использовавшимися впоследствии для улучшения колониальной диеты (они пресны, но питательны). Сейчас на станциях пытаются повысить количество феофитина в местных грибах. За десятилетия после Планетаризации был создан ряд улучшенных сельскохозяйственных культур, первые из которых клонировались на культивационных станциях: модифицированные соевые бобы и кукуруза улучшили пищевые масла; выведенная из африканских сортов питательная кукуруза обогащена витаминами; улучшенные местные грибы, похожие на шиитаке и зимние опята со Старой Земли, стали обильным источником заменителя мяса - микопротеина. Эти и большинство других культур, созданных в культивационных станциях, выращиваются в промышленном масштабе на продажу. Тем не менее, условия на поверхности планеты оказались слишком жесткими для обширного культивирования некоторых новых видов, поэтому часть культивационных станций используется как биологические убежища, а не как садоводческие лаборатории.</div>
	</div>
</asp:Content>

