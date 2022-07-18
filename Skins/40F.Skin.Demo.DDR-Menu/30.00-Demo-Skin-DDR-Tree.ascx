<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<!-- #include file="Base/Header.ascx" -->

	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>
			<h2>Default jsTree</h2>
			<div id="tree-menu">
			<dnn:MENU MenuStyle="Menus/30.00-DDR-XSLT-UL-Tree" runat="server"></dnn:MENU>
			</div>
			
			<p>
			<a href="https://www.jstree.com" target="_blank">Used plugin: jsTree</a>
			</p>
			<em>Please note that you have to use jQuery 1.12 and the according jQuery UI version for this menu to work.<br>
			You can change this in the Host Settings</em>

		
<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->

			<script>
			$('#tree-menu').jstree().bind("select_node.jstree", function (e, data) {
				 var href = data.node.a_attr.href;
				 document.location.href = href;
			});
			
			</script>