<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<!-- #include file="Base/Header.ascx" -->

	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->
		<div class="clear-after">
			<div class="c24-12 c-pad-h-20">
			
				<h2>Dump XML example: Root pages</h2>
					<pre><dnn:MENU MenuStyle="DumpXML" NodeSelector="*,0,0" runat="server"></dnn:MENU></pre>
					
					
					<h2>Dump XML example: All pages</h2>
					<pre><dnn:MENU MenuStyle="DumpXML" NodeSelector="*" runat="server"></dnn:MENU></pre>
					
					
					
				</div>
				<div class="c24-12 c-pad-h-20">
					<h2>Full Menu</h2>
					<dnn:MENU MenuStyle="Menus/01.00-DDR-Token-UL" runat="server"></dnn:MENU>
				</div>
		</div>
		
<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->

