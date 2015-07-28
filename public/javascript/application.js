$(document).on('ready',function() {


 	$(".profile-images-container .col-md-4, .profile-images-container .col-md-6").hover(function() {
 		$(this).find('.show_on_hover:first').fadeIn(1000);
 	}, function() {
 		$(this).find('.show_on_hover').fadeOut();
 	});


});
