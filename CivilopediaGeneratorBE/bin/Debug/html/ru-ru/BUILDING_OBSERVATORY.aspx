<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Обсерватория</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Обсерватория</div>
	<img src="/civilopediabe/images/large/BUILDING_OBSERVATORY.png" alt="Обсерватория" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">100 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		<h2>Наука:</h2><div class="infobox">+2 <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_PHYSICS.aspx" onmouseover="return tooltip('Физика');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_PHYSICS.png" /></a></div>
		
		
		
		
		
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">+1 к <img src="/civilopediabe/images/research.png" alt="science" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/firaxite.png" alt="firaxite" /> {5_ObjectDesc[2]}</div>
		
		<h2>История</h2><div class="infobox">Одними из первых научно-исследовательских сооружений, построенных колонистами, стали обсерватории, использовавшиеся не только для создания звездных карт нового неба, но и для исследований в области метеорологии, геологии, океанографии и вулканологии - люди изо всех сил старались понять новую планету. Сперва телескопы в наземных обсерваториях использовали различные приспособления для наблюдения за электромагнитным спектром, в итоге удалось составить карту ближнего и дальнего космического пространства, а также отследить мусор, оставшийся на орбите от нескольких межзвездных кораблей, которые доставляли сюда людей. Благодаря тому, что на новой планете атмосфера несколько тоньше, радиотелескопы позволяли получать изображения из самого сердца галактики, и качество этих изображений во много раз превосходило результат действия телескопов в обсерваториях Старой Земли. Позднее в некоторых колониях появились телескопы, работающие на рентгеновском излучении, гамма-излучении и высокоэнергетичном излучении. Новые обсерватории также были оснащены детекторами гравитационных волн, предназначенными для обнаружения и измерения искажений в пространстве-времени, и нейтриновыми детекторами, используемыми для обнаружения сверхновых звезд и других уникальных астрономических явлений. Все эти наблюдения представляют большой интерес, так как власти некоторых колоний помышляют вернуться в космос и попытаться восстановить контакт с прежним миром. В заключение следует отметить значительный вклад, внесенный вулканологическими обсерваториями в расширение и безопасность колоний на этой геологически активной планете.</div>
	</div>
</asp:Content>

