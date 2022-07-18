<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<!-- #include file="Base/Header.ascx" -->

	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->
		<div class="clear-after">
			<div class="c24-12 c-pad-h-20">
			
				<h2>Menu in Alphabetical order on Level 1</h2>
				<h6>Compare with menu on the left</h6>
				<div class="BreadCrumbs">
				<dnn:MENU MenuStyle="Menus/10.04-DDR-XSLT-UL-Alphabetically" NodeSelector="+0,1,0"  runat="server"></dnn:MENU>
				</div>
				
				
				
			</div>
			<div class="c24-12 c-pad-h-20">
				<h2>Full Menu</h2>
				<dnn:MENU MenuStyle="Menus/01.00-DDR-Token-UL" runat="server"></dnn:MENU>
			</div>
		</div>
		
<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->

