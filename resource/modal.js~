$("#modal_trigger").leanModal({top : 200, overlay : 0.6, closeButton: ".modal_close" });

	$(function(){
		// Calling Login Form
		$("#login_form").click(function(){
			$(".social_login").hide();
			$(".sidebar-nav nav-pills nav-stacked").hide();
			$(".forgot_form").hide();
			$(".user_login").show();
			return false;
		});

		// Calling Register Form
		$("#register_form").click(function(){
			$(".social_login").hide();
			$(".user_register").show();
			$(".header_title").text('Register');
			return false;
		});

		// Going back to Social Forms
		$(".back_btn").click(function(){
			$(".user_login").hide();
			$(".user_register").hide();
			$(".forgot_for").hide();
			$(".social_login").show();
			$(".header_title").text('Login');
			return false;
		});
		
		$("#forgot_form").click(function(){
			$(".user_login").hide();
			$(".user_register").hide();
			$(".forgot_for").show();
			$(".header_title").text('Login');
			return false;
		});


	})
