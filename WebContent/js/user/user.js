$(document).foundation();
	
var body=new Foundation.Abide($("body"));
$(function(){
	$(".login-box").css({"margin-top": ($(window).height()-390)/2-120+"px"});
	$(window).resize(function(){
		$(".login-box").css({"margin-top": ($(window).height()-390)/2-120+"px"});
	});
	$("input[type=text],input[type=password]").focusout(function(){
		body.validateInput($(this));
	});
	
	$("input[type=text],input[type=password]").keyup(function(){
		body.validateInput($(this));
	});
	
	Foundation.Abide.defaults.validators['password_match_check'] =
		function($el,required,parent) {
		  var result = true;
		  // parameter 1 is jQuery selector
		  
		  if($("#signup [name=password]").val() != $el.val()){
			  result = false;
			  $el.next("span").text("Passwords must match.");
		  }
		  
		  return result;
		};
	
	Foundation.Abide.defaults.validators['password_length_check'] =
		function($el,required,parent) {
		  var result = true;
		  // parameter 1 is jQuery selector
		  
		  if($el.val().length<6){
			  result = false;
			  $el.next("span").text("Passwords must be at least 6 characters.");
		  }
		  
		  return result;
		};
});

function login(){
 	if(validate("#login")){
 		$("#signup input").attr("disabled","disabled");
 		$("#login").submit();
 	}
}

function register(){
 	if(validate("#signup")){
 		$("#login input").attr("disabled","disabled");
 		$("#signup").submit();
 	}
}

function validate(str){
	var elem = new Foundation.Abide($(str));
 	return elem.validateForm();
}