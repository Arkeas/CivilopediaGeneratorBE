<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: Ксенопитомник</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">Ксенопитомник</div>
	<img src="/civilopediabe/images/large/BUILDING_XENONURSERY.png" alt="Ксенопитомник" class="contentimage" />
	<div class="contentleft">
		<h2>Стоимость:</h2><div class="infobox">180 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>Содержание:</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		<h2>Наука:</h2><div class="infobox">+10% <img src="/civilopediabe/images/research.png" alt="research" /> </div>
		
        
        
		
		
        
		
		<h2>Нужные технологии:</h2><div class="infobox"><a href="TECH_ALIEN_SCIENCES.aspx" onmouseover="return tooltip('Наука инопланетян');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_ALIEN_SCIENCES.png" /></a></div>
		
		<h2>Специалисты:</h2><div class="infobox"><a href="CONCEPT_BUILDINGS_SPECIALISTS.aspx" onmouseover="return tooltip('Ученый');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/SPECIALIST_SCIENTIST.png" /></a></div>
		
		
		<h2>Совершенства:</h2><div class="infobox">Необходим <span class="color_harmony_affinity">уровень 2 <img src="/civilopediabe/images/AFFINITY_TYPE_HARMONY.png" alt="harmony" /> {@4_AffinityName[2]}.</span></div>
	</div>
	<div class="contentright">
		<h2>Игровая информация:</h2><div class="infobox">+1 к <img src="/civilopediabe/images/research.png" alt="science" /> {3_YieldDesc[3]} от <img src="/civilopediabe/images/xenomass.png" alt="xenomass" /> {5_ObjectDesc[2]}</div>
		
		<h2>История</h2><div class="infobox">Когда колониальные ботаники начали адаптировать местную флору в утилитарных целях: сельскохозяйственных, фармацевтических, военных (создание токсинов) и других, - для разведения нужных видов были построены специальные питомники. По применявшимся методам ксенопитомники различались не меньше, чем на Старой Земле. Они располагались на огороженных участках и клумбах, в контейнерах, теплицах и прудах с аквакультурами. Массовое производство рассады и завязи – трудоемкий процесс, но большая его часть (контроль температуры, вентиляция, управление светом, полив и подкормка) была автоматизирована и роботизирована. Местные и выведенные виды иногда выращивают с использованием семян или спор, а для большинства культурных сортов применяют вегетативное размножение, используя черенки или клонирование. Те растения, у которых имеются луковицы, рассаживают путем деления луковицы на равные части. В последнее время все большее число колониальных ксенопитомников использует микроразмножение для массового производства растений, способных стать исходным материалом (например, для последующего клонирования). Когда молодые растения укрепятся, их обычно пересаживают на открытые поля или во фруктовые сады для последующего коммерческого использования. В последнее время некоторые ксенопитомники разводят оригинальные виды этой планеты, чтобы уберечь их от колониальной экспансии и терраформирования. Как и в резервациях инопланетян, в ксенопитомниках ведутся различные научные исследования, а еще их используют в культурных, развлекательных и образовательных целях.</div>
	</div>
</asp:Content>

