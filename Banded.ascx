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

<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />
<dnn:LANGUAGE runat="server" id="LANGUAGE1"  showMenu="False" showLinks="True" />

<div class="row">
  <div class="large-6 columns">
  	 <dnn:LOGO runat="server" id="dnnLOGOmobi" />
  </div>
  
  <div class="large-6 columns">
  	<dnn:SEARCH ID="dnnSearch" runat="server" ShowSite="false" ShowWeb="false" EnableTheming="true" Submit="Search" CssClass="SearchButton" />
  </div>
  
</div>

<div class="row">
  <div class="large-6 columns">
    <dnn:MENU ID="foundationNav" MenuStyle="foundationNav" runat="server"></dnn:MENU>
  </div>
</div>

<div class="row">
  <div class="large-8 columns">
    <div id="ContentPane" class="contentPane" runat="server"></div>
  </div>
  <div class="large-4 columns">
    <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
    <dnn:USER ID="dnnUser" runat="server" LegacyMode="false" /> 
  </div>
</div>



<footer class="row">
  <div class="large-12 columns">
    <hr />
    <div class="row">
      <div class="large-6 columns">
        <dnn:COPYRIGHT ID="dnnCopyright" runat="server" CssClass="pull-left" />
      </div>
      <div class="large-6 columns">
      	 <ul class="inline-list right">
          <li><dnn:TERMS ID="dnnTerms" runat="server" /></li>
          <li><dnn:PRIVACY ID="dnnPrivacy" runat="server" /></li>
        </ul>
      </div>
    </div>
  </div>
</footer>


<%--<div class="row">
  <div class="large-12 columns">

    <div id="leftPane" class="span8 leftPane spacingTop" runat="server"></div>
    <div id="sidebarPane" class="span4 sidebarPane spacingTop" runat="server"></div>

    <div id="contentPaneLower" class="span12 contentPane spacingTop" runat="server"></div>

    <div id="footerLeftOuterPane" class="span2 footerPane" runat="server"></div>
    <div id="footerLeftPane" class="span2 footerPane" runat="server"></div>
    <div id="footerCenterPane" class="span2 footerPane" runat="server"></div>
    <div id="footerRightPane" class="span2 footerPane" runat="server"></div>
    <div id="footerRightOuterPane" class="span2 offset2 footerPaneRight" runat="server"></div>
    
  </div>
</div>--%>


<%-- Foundation Resources --%>
<%-- Don't use the default DNN js include because it moves these to the head and causes conflict errors --%>
<script src="/Portals/_default/Skins/Foundation/foundation/js/jquery.js"></script>
<script src="/Portals/_default/Skins/Foundation/foundation/js/foundation.min.js"></script>
<script>
  $(document).foundation();
</script>
<%-- Foundation Resources --%>