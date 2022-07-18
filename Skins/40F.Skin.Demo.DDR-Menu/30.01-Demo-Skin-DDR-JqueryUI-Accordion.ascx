<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>


<!-- #include file="Base/Header.ascx" -->

	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->


			<h2>jQuery UI accordion</h2>
			<div id="jquery-accordion">
			<dnn:MENU MenuStyle="Menus/30.01-DDR-JqueryUI-Accordion" runat="server"></dnn:MENU>
			</div>

			<p>
			Please note that I'm loading jQuery and jQuery UI using the jQuery Skin Object in the Header include.<br />
			If you don't do that, the accordion will not work when the user is not logged in.
			</p>

			
			  <script>
			  $( function() {
				  $("#accordion").accordion({
					  heightStyle: "content",
					  collapsible: true,
					  autoHeight: false
				  });
			  } );
			  </script>
  

		
<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->
