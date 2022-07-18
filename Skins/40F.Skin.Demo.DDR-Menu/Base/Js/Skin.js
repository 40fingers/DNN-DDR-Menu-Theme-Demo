	


	$(document).ready(
		function(){
			initSkin();
	});
			
	function initSkin(){
		
		fixHomeLink();

	}
	
	function fixHomeLink(){
		/* This will change the links to our site. 
		It will add the name of the DEMO skin as a querystring parameter, so we can see in Analytics from what Demo skins people visit our website.
		That's all. :-)
		*/
			var link
			$("#skin a").each(function(){
				
				link = $(this).attr('href');

				if (link !== undefined && link.indexOf(homeDomain) > -1 && link.indexOf('?source') == -1){
					var link =  link + '?source=' + qsPar;
					$(this).attr('href', link);
					$(this).attr('target', '_blank');
				}
		});
	
	}
	
	function toggleMenu(){
		var cssClass = "menu-open"
		
		if ($(".demo").hasClass(cssClass)){
			$(".demo").animate({"margin-Left": "0"})
			$(".demo").removeClass(cssClass)
			$(".content-main").animate({"margin-Left": "300px"})
		}else{
			$(".demo").animate({"margin-Left": "-260px"})
			$(".demo").addClass(cssClass)
			$(".content-main").animate({"margin-Left": "40px"})
		}


		
	}

