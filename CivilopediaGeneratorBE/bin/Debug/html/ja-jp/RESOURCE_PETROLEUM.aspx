<%@ Page Title="" Language="VB" MasterPageFile="Resources.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 石油</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">石油</div>
	<img src="/civilopediabe/images/large/RESOURCE_PETROLEUM.png" alt="石油" class="contentimage" />
	<div class="contentleft">
		<h2>生産:</h2><div class="infobox">生産なし</div>
		
<h2>可視化させる技術:</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('化学');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		<h2>見つかる場所:</h2><div class="infobox"><a href="FEATURE_MARSH.aspx" onmouseover="return tooltip('湿原');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/FEATURE_MARSH.png" /></a><a href="TERRAIN_DESERT.aspx" onmouseover="return tooltip('砂漠');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_DESERT.png" /></a><a href="TERRAIN_TUNDRA.aspx" onmouseover="return tooltip('ツンドラ');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_TUNDRA.png" /></a><a href="TERRAIN_SNOW.aspx" onmouseover="return tooltip('氷土');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_SNOW.png" /></a><a href="TERRAIN_COAST.aspx" onmouseover="return tooltip('近海');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TERRAIN_COAST.png" /></a></div>
		<h2>活用施設:</h2><div class="infobox"><a href="IMPROVEMENT_PETROL_WELL.aspx" onmouseover="return tooltip('石油坑');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/IMPROVEMENT_PETROL_WELL.png" /></a></div>
	</div>
	<div class="contentright">
		
<h2>ゲーム情報:</h2><div class="infobox">多くの軌道ユニットで使用されます。</div>
		<h2>歴史</h2><div class="infobox">惑星内に埋蔵されている石油の主成分は、腐敗または化石化した動物や植物(主に藻類や異形胞子植物)由来の炭化水素および液状有機化合物の混合体であり、堆積岩の下に眠っていることが多い。地球産のものとよく似ているが、この惑星の石油にはペンタン、ヘキサン、ヘプタンといった重質炭化水素が多く含まれる傾向にある。これは、この星が地球よりも若く、近年火山活動が活発化しているためだが、そうした特性を有するこの星の石油を処理する――分別蒸留でアルカンを、接触分解でナフテンを分離させる――プロセスは、地球でやる場合に比べてずっと複雑である。それでも初期の入植者たちは、速やかに採掘場と石油精製工場を設置すると、輸送や農場、地球から持ち込んだ軍需品に欠かせないガソリンやディーゼル燃料、ジェット燃料、灯油などを生産した。惑星原産の石油から精製されるこれらの燃料は、オクタン価およびセタン価が低かった(ほとんど38以下)ものの、時間と共に精製工程が改良され、現在ではかなり品質が向上している。磁力浮上システムや核融合ドライブといった、他の推進装置の進化に伴い、コロニーにおける石油製品の需要は減少しつつあるが、特定のプラスチックや薬剤の生産には石油系溶剤が不可欠であるため、石油精製が入植地にとって重要であることは今も変わりない。</div>
	</div>
</asp:Content>

