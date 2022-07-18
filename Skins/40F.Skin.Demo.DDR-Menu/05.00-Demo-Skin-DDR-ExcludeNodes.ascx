<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<!-- #include file="Base/Header.ascx" -->

	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->
		<div class="clear-after">
			<div class="c24-12 c-pad-h-20">
				<h2>Root Only, Exclude Admin</h2>
				<dnn:MENU MenuStyle="Menus/01.00-DDR-Token-UL" NodeSelector="*,0,0" ExcludeNodes="Admin,Host" runat="server"></dnn:MENU>
			
				<h2>Direct Children of current Page<br>without 04 & 05</h2>
				<dnn:MENU MenuStyle="Menus/01.00-DDR-Token-UL" runat="server" NodeSelector="0,0,0" ExcludeNodes="04,05"></dnn:MENU>
				
				<h2>Children of Page 03<br>without 03-03</h2>
				<dnn:MENU MenuStyle="Menus/01.00-DDR-Token-UL" runat="server" NodeSelector="03" ExcludeNodes="03-03"></dnn:MENU>
				
				
			</div>
			<div class="c24-12 c-pad-h-20">
				<h2>Full Menu</h2>
				<dnn:MENU MenuStyle="Menus/01.00-DDR-Token-UL" runat="server"></dnn:MENU>
			</div>
		</div>
		
<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->
