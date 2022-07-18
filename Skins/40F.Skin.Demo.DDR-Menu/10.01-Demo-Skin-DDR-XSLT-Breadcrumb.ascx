<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<!-- #include file="Base/Header.ascx" -->

	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->
		<div class="clear-after">
			<div class="c24-12 c-pad-h-20">
				<h2>BreadCrumbs Full tree, hide Pages</h2>
				<div class="BreadCrumbs">
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server"></dnn:MENU>
				</div>
			
				<h2>Breadcrumbs Menu template UL</h2>
				<dnn:MENU MenuStyle="Menus/10.01-DDR-XSLT-Breadcrumb-ul" runat="server"></dnn:MENU>
				
				<h2>Breadcrumbs Menu template span</h2>
				<dnn:MENU MenuStyle="Menus/10.01-DDR-XSLT-Breadcrumb-span" runat="server"></dnn:MENU>

			</div>
			<div class="c24-12 c-pad-h-20">
				<h2>Full Menu</h2>
				<dnn:MENU MenuStyle="Menus/01.00-DDR-Token-UL" runat="server"></dnn:MENU>
			</div>
		</div>
		
<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->

