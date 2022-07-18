<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<!-- #include file="Base/Header.ascx" -->

	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->
			<h2>Menu with Icons</h2>
			<dnn:MENU MenuStyle="Menus/02.02-DDR-XSLT-UL-Icons" NodeSelector="+0,1,1" runat="server"></dnn:MENU>
			
			<h2>Menu with LargeIcons</h2>
			<dnn:MENU MenuStyle="Menus/02.02-DDR-XSLT-UL-LargeIcons" NodeSelector="+0,1,1" runat="server"></dnn:MENU>
			
			
<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->