// JavaScript Document
$(function() {
    $('#home-icon-a').tipsy({gravity: $.fn.tipsy.autoWE});
	transformButtons();
	
	$('#right-pane-div input:checkbox').each(function(index) 
	{ 
		$(this).click(function () {
			switch(isAnyChecked()){
			case 0:{
					$('#btnDelete').attr("disabled", "disabled");
					$('#btnEdit').attr("disabled", "disabled");		
					$('#btnDelete').addClass("disabled");	
					$('#btnEdit').addClass("disabled");			
					break;					
				}
				case 1:{
					$('#btnDelete').removeAttr("disabled");
					$('#btnEdit').removeAttr("disabled");	
					$('#btnDelete').removeClass("disabled");			
					$('#btnEdit').removeClass("disabled");		
					break;					
				}
				default:{
					$('#btnDelete').removeAttr("disabled");
					$('#btnDelete').removeClass("disabled");
					$('#btnEdit').attr("disabled", "disabled");	
					$('#btnEdit').addClass("disabled");					
				}
			}
		});
	});
});

function transformButtons()
{
	var text = ['New','Save','Edit','Delete','Existing'];
	var style = ['add','save','edit','delete','view'];
	
	$('#tool-bar-div :submit').each(function(index)
	{
		var disabled = (index!=0 && index!=1 && index!=4)?'disabled':'';
		$(this).replaceWith('<button name="btn'+text[index]+'" class="sexybutton '+disabled+'" onclick=\'javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("btn'+text[index]+'", "", true, "", "", false, false))\' type="submit" value="'+text[index]+'" '+disabled+' id="'+
		$(this).attr('id')+'"><span><span><span class="'
		+style[index]+'">'+text[index]+'</span></span></span></button>');
	});
}

function isAnyChecked()
{
	var flag = 0;
	$('#right-pane-div input:checkbox').each(function(index) 
	{ 
		if($(this).is(':checked'))
			flag++;
	});
	
	return flag;
}

$(document).ready(function() {
	var bodyheight = $(document).height();
	$("#content-main-div").height(bodyheight-85);
	$("#left-pane-div").height(bodyheight-90);
	$("#right-pane-div").height(bodyheight-90);
	$("#vmenu-div").height(bodyheight-215);
	 
	// for the window resize
	$(window).resize(function() {
	  var bodyheight = $(document).height();
	  
	  if(bodyheight <= 500) return;
	  $("#right-pane-div").height(bodyheight-90);
	  $("#left-pane-div").height(bodyheight-90);
	  $("#content-main-div").height(bodyheight-85);
	  $("#vmenu-div").height(bodyheight-215);
  });
  
	$('#grid-div table').each(function(){
		this.attr('rules', '0');
	});
});