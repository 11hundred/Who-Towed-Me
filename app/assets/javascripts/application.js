// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
	
	

$(window).load(function() {

	var windowHeight = $(window).height();   
	var windowHeightHalf = $(window).height()/2;   
	var windowWidth = $(window).width();   
	var windowWidthHalf = $(window).width() /2;   
	var windowWidthDouble = $(window).width() *2;   

	// Set  viewport 
	$('.sign').css({height:windowHeight -50});
	$('.sign .title').css({paddingTop:windowHeightHalf -200});

	$( ".plates li:nth-child(odd)" ).addClass( "odd" );
	$( ".plates li:nth-child(even)" ).addClass( "even" );


	$('.search_button').click( function() {
    	$('.title').css({opacity:0},0);
    	$(' input#plate_search').focus();
	    $("#search").fadeIn(0, function(){
		    $("body").addClass("active");
		    $("#make").slideDown(220);
	    });
		if ( $( "body" ).is( ".active" ) ) {
	    	$(' input#plate_search').focus();
		}
		
		
	});
	$('.make-links .search_make').click( function() {
	    $(".search_make ul").slideToggle();
		$('html, body').animate({scrollTop: $(".search_make ul").offset().top}, 650);
	});
	

	$('.make-links .search_make').click( function() {
	    $("body").addClass("make-active");
		
	});
	
	$('.open-close').click( function() {
		
	    $(".overlay").toggle(0,function() {
	    } );
        $('.open-close').html($('.open-close').text() == 'info' ? 'close' : 'info');
	});
	$(' input#plate_search').focus(function() {
	    $(this).addClass("active");
	    $("body").addClass("active");
		$('html, body').animate({scrollTop: $('html, body').offset().top}, 650);
	});
	
	// $('input#plate_search').blur(function() {
	//     $(this).removeClass("active");
	//     $("body").removeClass("active");
	// });
	
	$('.make_button').click( function() {
	    $("#search").fadeIn(0, function(){
			
	    $("#make").slideDown(220, function(){
			$('html, body').animate({scrollTop: $(".search_make ul").offset().top}, 150, function(){
				 $(".search_make ul").slideDown();
			});
		   
	    });
    });
	    $("body").addClass("active");
	    $("body").addClass("make-active");
	});
	$('.cancel').click( function() {
	    $("body").removeClass("active");
	    $("body.make-active").removeClass("make-active");
	    $("#make").delay(50).slideUp(220);
    	$('#search').fadeOut(0);
    	$('.title').css({opacity:1},0);
	});


});

$(window).resize(function() {
	var windowHeight = $(window).height();   
	var windowHeightHalf = $(window).height()/2;   
	var windowWidth = $(window).width();   
	var windowWidthHalf = $(window).width() /2;   
	var windowWidthDouble = $(window).width() *2;   

	$('.sign').css({height:windowHeight -50});
	$('.sign .title').css({paddingTop:windowHeightHalf -200});
	$('.interior.clicked').animate({marginLeft:-windowWidth /2 -120}, 200);

})



