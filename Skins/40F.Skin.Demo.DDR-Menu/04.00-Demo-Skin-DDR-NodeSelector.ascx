<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<!-- #include file="Base/Header.ascx" -->

	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->
		<div class="clear-after">
			<div class="c24-12 c-pad-h-20">
				<h2>Root Only</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" NodeSelector="*,0,0" runat="server"></dnn:MENU>
				
				<h2>Root + Level 1</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" NodeSelector="*,0,1" runat="server"></dnn:MENU>
				
				<h2>Menu on Level 1 in current Breadcrumb</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" NodeSelector="+0,0,0" runat="server"></dnn:MENU>
				
				<h2>Menu from Level 1 in current Breadcrumb, 3 levels deep</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" NodeSelector="+0,0,2" runat="server"></dnn:MENU>
				
				<h2>Menu on Level 2 in current Breadcrumb</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" NodeSelector="+0,1,0" runat="server"></dnn:MENU>
			
				<h2>Direct Children of current Page</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="0,0,0"></dnn:MENU>
				
				<h2>Direct Children of Current Root Page</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="+0,0,0"></dnn:MENU>

				<h2>Children of Page B-A</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="B-A"></dnn:MENU>
				
				<h2>Direct Children of Page B-A</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="B-A,0,0"></dnn:MENU>
				
				<h2>Children of Page B-A, Show 2 Levels</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="B-A,0,1"></dnn:MENU>
				
				<h2>Children of Page B-A, 1 Level deeper, Show 2 Levels</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="B-A,1,1"></dnn:MENU>
						
				<h2>Children of Page Admin</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="Admin"></dnn:MENU>
				
				<h2>Siblings of Current Page</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="-1,0,0"></dnn:MENU>
				
				<h2>Siblings of Current Page + Children, 1 level</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="-1,0,1"></dnn:MENU>
				
				<h2>Parent Siblings of Current Page</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="-2,0,0"></dnn:MENU>
				
				<h2>Parent Siblings of Current Page + children, 1 level</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="-2,0,1"></dnn:MENU>
				
				<h2>Grand-Parent of Current Page + children</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="-3,0,3"></dnn:MENU>
				
			
				<h2>Parent page + sibling pages, xslt</h2>
				<h3>Part of the filtering is done in xslt</h3>
				<dnn:MENU MenuStyle="Menus/04.01-DDR-XSLT-UL-Childmenu-with-Parent" runat="server" NodeSelector="-2,0,1"></dnn:MENU>

				
				<h2>Parent page + sibling pages, css</h2>
				<h3>Part of the filtering is done using CSS</h3>
				<div class="ShowOnlyParentAndSiblings">
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="-2,0,1"></dnn:MENU>
				</div>
				
				<h2>Child pages, siblings if no children, xslt</h2>
				<h3>Part of the filtering is done in xslt</h3>
				<dnn:MENU MenuStyle="Menus/04.02-DDR-XSLT-UL-Childmenu-or-Siblings" runat="server" NodeSelector="-1,0,1"></dnn:MENU>
				
				
				<h2>Siblings of Current Page With children, show 2 levels</h2>
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server" NodeSelector="-1,0,2"></dnn:MENU>
				
		
			</div>
			<div class="c24-12 c-pad-h-20">
				<h2>Full Menu</h2>
				
				<dnn:MENU MenuStyle="Menus/02.01-DDR-XSLT-UL-Classes" runat="server"></dnn:MENU>
			</div>
		</div>
			

		
<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->

