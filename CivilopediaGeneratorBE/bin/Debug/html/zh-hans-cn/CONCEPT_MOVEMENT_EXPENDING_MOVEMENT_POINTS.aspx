<%@ Page Title="" Language="VB" MasterPageFile="Concepts.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 花费移动力点数</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">花费移动力点数</div>
	<div class="contentwide">
		<h2>概要：</h2><div class="infobox">单位会消耗移动力点数进入单元格。单位所进入的单元格地形决定了移动力点数的耗费如何。离开当前单元格不会产生耗费；移动力损耗只按进入的单元格计算。<br /><br />一般来说，进入草原和平原这类的开阔地形只耗费1点移动力，森林和丘陵则要2点。渡过河流时会耗费掉单位所有的移动力。<br /><br />单位不论剩余多少移动力都能移动一个单元格。不论所进入的单元格需耗费多高移动力；只要单位有剩余移动力就能够进入。单位一旦消耗了所有的移动力点数就必须停止移动，直到下个回合。</div>
	</div>
</asp:Content>

