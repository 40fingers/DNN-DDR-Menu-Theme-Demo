<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" src="~/Admin/Skins/jQuery.ascx" %>

<dnn:jQuery jQueryUI="True" runat="server"></dnn:jQuery>

<!-- #include file="../_Variables.ascx" -->

<script runat="server">
' Seting the Doctype to HTML5. 
' This is not the regular way to do this, but I want as less extra files in this skinpack as possible.
' You can also do this (and more) using our StyleHelper, downloadable from our website.

	Private Sub Page_PreRender(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.PreRender
		 Dim liDoctype As Literal = CType(Me.Page.FindControl("skinDocType"), Literal)
		 liDoctype.Text = "<!DOCTYPE HTML>"
	End Sub



	Private Function SQP() as String

		Return server.HtmlEncode(GetSkinFolderName)
		
	End Function

	
	Private Function GetSkinFolderName () as String

		Dim sOut as string = SkinPath
		Dim sSplit() as string = sOut.split("/")
		sOut = sSplit(sSplit.length-2)
		
		Return sOut

	End Function
	
		Private Function GetSkinName () as String
		
			Return System.IO.Path.GetFileName (PortalSettings.ActiveTab.SkinSrc)
			
		End Function

	Private Function SkinName() as String

		Return String.Format("{0} // {1}", GetSkinFolderName.Replace(".", " "), GetSkinName())
	
	End Function
	
	Private Function IsLocalSite() as String
		'Add class for Local Sites
		If HttpContext.Current.Request.ServerVariables("REMOTE_ADDR") = "127.0.0.1" Then
			Return ("LocalSite")
		Else
			Return ("LiveSite")
		End If
		
	End Function
	




</script>

<link href='https://fonts.googleapis.com/css?family=Roboto:300,300italic,400,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<div class="wrap-main <%=IsLocalSite%> clear-after" id="skin">
	<div class="demo">
	<div class="menu-header"><a class="icon40 float-right" id="togglemenu" onclick="toggleMenu()"><i class="material-icons">menu</i></a><a href="http://<%=PortalSettings.PortalAlias.HttpAlias%>"><img src="<%=SkinPath%>/Base/Img/FFLogoWhite.png" /></a></div>
	<dnn:MENU MenuStyle="Base/MenuDefinition" runat="server" ExcludeNodes="Admin,Host"></dnn:MENU>
	<div class="bottom-links">
	<span class="text"><a class="c24-12" href="//<%=sProductsUrl%>" target="_Blank"><i class="material-icons">public</i><span> 40FINGERS</span></a>  <a class="c24-12" href="//<%=sDownloadUrl%>" target="_blank"><i class="material-icons">file_download</i><span> Download</span></a></span>
	<a class="icon40" href="/login.aspx"><i class="material-icons">person</i></a>
	</div>
	</div>
	<div class="content-main">
	<header class="main clear-after">
		<div class="mid c-pad-h40 c-pad-v20">
			<h1 class="title-main"><a href="//<%=sProductsUrl%>" target="_Blank">40FINGERS "<%=sExtensionName%>" <%=sExtensionType%></a></h1>
			<h2 class="description-main">Page skin: <%=SkinName%></h2>
		</div>
		<div class="right">
		<a class="icon40" href="//<%=sDownloadUrl%>" target="_blank"><i class="material-icons">file_download</i></a>
		</div>
	</header>
	<section class="main clear-after c-pad-h40 c-pad-v20">
		<div class="ContentPane Pane" id="ContentPane" runat="server"></div>