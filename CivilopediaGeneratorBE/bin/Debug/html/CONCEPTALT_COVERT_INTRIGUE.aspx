<%@ Page Title="" Language="VB" MasterPageFile="Covert.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<title>CIVILOPEDIA Online: City Intrigue Level</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="title">City Intrigue Level</div>
	<div class="contentwide">
		<h2>Summary:</h2><div class="infobox">Each city has an “intrigue level” which reflects how much clandestine activity is going on there.  Each time a covert operation is successful, the intrigue level increases. The intrigue level starts at 0 and maxes out at 5 (internally, this is tracked on a 0-100 scale).<br /><br />As the intrigue level of a city increases, so does the risk to agents performing operations. More destabilizing operations become available as a city’s intrigue increases. As a rule of thumb, all covert operations that can adversely affect the target player are reserved for levels 4 and 5, while operations which simply benefit the performing player but which would otherwise be harmless to the target player are unlocked at lower intrigue levels.</div>
	</div>
</asp:Content>

