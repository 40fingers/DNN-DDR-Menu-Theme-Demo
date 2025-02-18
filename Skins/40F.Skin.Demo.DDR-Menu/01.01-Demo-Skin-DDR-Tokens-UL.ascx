<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<!-- #include file="Base/Header.ascx" -->

	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->
	<h1>DNN DDR Memu Example using Tokens</h1>
	<div>
		This template shows how to use the [ICON]  and [LARGEIMAGE] tokens.<br>
		If an [ICON] is set for the page, that will be used, unless you set the [LARGEIMAGE] for the page.
	
	</div>
		
			<dnn:MENU MenuStyle="Menus/01.01-DDR-Token-UL" runat="server"></dnn:MENU>
		
<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->