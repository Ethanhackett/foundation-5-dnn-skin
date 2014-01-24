<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKTOMOBILE" Src="~/Admin/Skins/LinkToMobileSite.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<%-- Foundation Resources --%>
<dnn:DnnJsInclude ID="modernizr" runat="server" FilePath="foundation/js/modernizr.js" PathNameAlias="SkinPath" />
<link rel="stylesheet" href="/Portals/_default/Skins/Foundation/foundation/css/foundation.min.css" media="screen" type="text/css" />
<%-- Include Foundation Icons --%>
<link rel="stylesheet" href="/Portals/_default/Skins/Foundation/foundation-icons/foundation-icons.css" media="screen" type="text/css" />
<%-- Foundation Resources --%>

<!--[if lt IE 9]>
  <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
  <script src="//s3.amazonaws.com/nwapi/nwmatcher/nwmatcher-1.2.5-min.js"></script>
  <script src="//html5base.googlecode.com/svn-history/r38/trunk/js/selectivizr-1.0.3b.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.1.0/respond.min.js"></script>
<![endif]-->

<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />
<dnn:LANGUAGE runat="server" id="LANGUAGE1"  showMenu="False" showLinks="True" />


<div class="off-canvas-wrap">
  <div class="inner-wrap">

<%-- Start Header --%>
<header>
	
	<%-- Start Row 1 --%>
	<div class="row">
	  <div class="large-12 columns">
	    <div id="Row1_12" class="Row1-12 dnn-panel" runat="server"></div>
	  </div>
	</div>
	<%-- End Row 1 --%>
	
	
	<%-- Start Header Content --%>
	<div class="row">
	  <div class="large-8 medium-7 columns">
	     <div id="DNNlogo">
	  	   <dnn:LOGO runat="server" id="dnnLOGOmobi" />
	  	 </div>
	  </div>
	  <div class="large-4 medium-5 columns">
	  	<div class="foundation-search">
		  	<dnn:SEARCH ID="dnnSearch" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="search-button fi-search" />
	  	</div>
	  </div>
	</div>
	<%-- End Header Content --%>
	
	<br/>
	
	<%-- Start Header Navigation --%>
	<div class="row">
	  <div class="large-12 columns">
	    <nav class="top-bar" data-topbar>
	      <ul class="title-area">
	        <li class="name">
	          <h1><a href="#"><%=PortalSettings.PortalName%></a></h1>
	        </li>
	        <li>
	          <section class="right-small hide-for-medium-up">
	            <a class="right-off-canvas-toggle menu-icon" ><span></span></a>
	          </section>
	        </li>
	      </ul>
	      <dnn:MENU ID="foundationNav" MenuStyle="foundationNav" runat="server"></dnn:MENU>
	    </nav>
	  </div>
	</div>
	<%-- End Header Navigation --%>

</header>
<%-- End Header --%>


<%-- Start Breadcrumbs --%>
<div class="row">
  <div class="large-12 columns">
    <ul class="breadcrumbs">
      <li>
	    <dnn:BREADCRUMB ID="dnnBreadcrumb" runat="server" LegacyMode="false" RootLevel="0" Separator="&lt;/li&gt;&lt;li&gt;"/>
	  </li>
	</ul>
  </div>
</div>
<%-- End Breadcrumbs --%>


<%-- Start Row 2 --%>
<div class="row">
  <div class="large-12 columns">
    <div id="Row2_12" class="Row2-12 dnn-panel" runat="server"></div>
  </div>
</div>
<%-- End Row 2 --%>


<%-- Start Row 3 --%>
<div class="row">
  <div class="large-8 medium-8 columns">
    <div id="ContentPane" class="contentPane dnn-panel" runat="server"></div>
  </div>
  <div class="large-4 medium-4 columns">
    <div id="ContentSidebar" class="Content-Sidebar dnn-panel" runat="server"></div>
    <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
    <dnn:USER ID="dnnUser" runat="server" LegacyMode="false" />
  </div>
</div>
<%-- End Row 3 --%>

<%-- Start Row 4 --%>
<div class="row">
  <div class="large-4 medium-4 columns">
    <div id="Row4_4x" class="Row4-4x dnn-panel" runat="server"></div>
  </div>
  <div class="large-8 medium-8 columns">
    <div id="Row4_x8" class="Row4-x8 dnn-panel" runat="server"></div>
  </div>
</div>
<%-- End Row 4 --%>

<%-- Start Row 5 --%>
<div class="row">
  <div class="large-6 medium-6 columns">
    <div id="Row5_6x" class="Row5-6x dnn-panel" runat="server"></div>
  </div>
  <div class="large-6 medium-6 columns">
    <div id="Row5_x6" class="Row5-x6 dnn-panel" runat="server"></div>
  </div>
</div>
<%-- End Row 5 --%>

<%-- Start Row 6 --%>
<div class="row">
  <div class="large-4 medium-4 columns">
    <div id="Row6_4xx" class="Row6-4xx dnn-panel" runat="server"></div>
  </div>
  <div class="large-4 medium-4 columns">
    <div id="Row6_x4x" class="Row6-x4x dnn-panel" runat="server"></div>
  </div>
  <div class="large-4 medium-4 columns">
    <div id="Row6_xx4" class="Row6-xx4 dnn-panel" runat="server"></div>
  </div>
</div>
<%-- End Row 6 --%>

<%-- Start Row 7 --%>
<div class="row">
  <div class="large-3 medium-3 columns">
    <div id="Row7_3xxx" class="Row6-3xxx dnn-panel" runat="server"></div>
  </div>
  <div class="large-3 medium-3 columns">
    <div id="Row7_x3xx" class="Row6-x3xx dnn-panel" runat="server"></div>
  </div>
  <div class="large-3 medium-3 columns">
    <div id="Row7_xx3x" class="Row6-xx3x dnn-panel" runat="server"></div>
  </div>
  <div class="large-3 medium-3 columns">
    <div id="Row7_xxx3" class="Row6-xxx3 dnn-panel" runat="server"></div>
  </div>
</div>
<%-- End Row 7 --%>


<%-- Start Row 8 --%>
<div class="row">
  <div class="large-12 columns">
    <div id="Row8_12" class="Row8-12 dnn-panel" runat="server"></div>
  </div>
</div>
<%-- End Row 8 --%>

<footer class="row">
  <div class="large-12 columns">
    <hr />
    
    <%-- Start Row 9 --%>
    <div class="row">
      <div class="large-12 columns">
        <div id="Row9_12" class="Row8-12 dnn-panel" runat="server"></div>
      </div>
    </div>
    <%-- End Row 9 --%>
    
    <div class="row">
      <div class="large-6 medium-6 columns">
        <dnn:COPYRIGHT ID="dnnCopyright" runat="server" CssClass="pull-left" />
      </div>
      <div class="large-6 medium-6 columns">
      	<div class="right">
          <dnn:TERMS ID="dnnTerms" runat="server" /> | 
          <dnn:PRIVACY ID="dnnPrivacy" runat="server" />
          
        </div>
      </div>
    </div>
  </div>
</footer>

 
	<!-- Off Canvas Menu -->
	<aside class="right-off-canvas-menu">
	    <!-- whatever you want goes here -->
	    <dnn:MENU ID="foundationOffcanvasNav" MenuStyle="foundationOffcanvasNav" runat="server"></dnn:MENU>
	    <%-- Start Offcanvas --%>
	    <div class="row">
	      <div class="large-12 columns">
	        <div id="Offcanvas" class="Offcanvas" runat="server"></div>
	      </div>
	    </div>
	    <%-- End Offcanvas --%>
	</aside>

	<!-- close the off-canvas menu -->
	<a class="exit-off-canvas"></a>

  </div>
</div>

<%-- Foundation Resources --%>
<%-- Don't use the default DNN js include because it moves these to the head and causes conflict errors --%>
<script src="/Portals/_default/Skins/Foundation/foundation/js/jquery.js"></script>
<script src="/Portals/_default/Skins/Foundation/foundation/js/foundation.min.js"></script>
<script>
	jQuery.noConflict();
	jQuery(document).foundation();
</script>
<%-- Foundation Resources --%>