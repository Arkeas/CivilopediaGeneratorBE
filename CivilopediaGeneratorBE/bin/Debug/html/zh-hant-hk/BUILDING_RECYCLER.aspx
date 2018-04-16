<%@ Page Title="" Language="VB" MasterPageFile="Buildings.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: 回收站</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">回收站</div>
	<img src="/civilopediabe/images/large/BUILDING_RECYCLER.png" alt="回收站" class="contentimage" />
	<div class="contentleft">
		<h2>消耗：</h2><div class="infobox">75 <img src="/civilopediabe/images/production.png" alt="production" /></div>
		<h2>維護費：</h2><div class="infobox">-1 <img src="/civilopediabe/images/energy.png" alt="energy" /></div>
		
		
		
		
		
		
		<h2>生產力：</h2><div class="infobox">+2 <img src="/civilopediabe/images/production.png" alt="production" /> </div>
        
        
		
		
        
		
		<h2>科技要求：</h2><div class="infobox"><a href="TECH_CHEMISTRY.aspx" onmouseover="return tooltip('化學');" onmouseout="return hideTip();"><img src="/civilopediabe/images/small/TECH_CHEMISTRY.png" /></a></div>
		
		
		
		
		
	</div>
	<div class="contentright">
		<h2>遊戲資訊：</h2><div class="infobox">來自商路的 +1 </span><img src="/civilopediabe/images/production.png" alt="production" />生產力</div>
		
		<h2>歷史</h2><div class="infobox">一種材料回收設施，或殖民者稱為「回收站」，分類和準備廢料以替代最終使用的產品。早期殖民地回收器使用機械生物處理，如厭氧消化或生物乾燥或氣化；之後該設施使用更先進的技術，此星球上的殖民地科學家採用這種方法。在這裡找到的一種有效方法是熱解，有機材料在缺氧的環境下以熱化學迅速分解，產生生物碳和生物燃料以及其他物質。另一個有效的方法是以生物質催化部分氧化，從而產生合成氣，使用於一些大型建設設備。廢物高壓鍋將各種有機廢物轉化為極其豐富的肥料和動物飼料，提高殖民地農場的農業生產。而最近的等離子弧方法能夠透過製造工廠分開合金組件以重新利用，尤其針對稀有地球金屬的需求。如果沒有回收器，很令人懷疑有些殖民地可達到現在的規模，因為在當地發現替代品之前，有限的地球資源就已不再增加。</div>
	</div>
</asp:Content>

