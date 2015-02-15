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
//= require turbolinks
//= require_tree .
	
	

$(document).ready(function() {

	var windowHeight = $(window).height();   
	var windowHeightHalf = $(window).height()/2;   
	var windowWidth = $(window).width();   
	var windowWidthHalf = $(window).width() /2;   
	var windowWidthDouble = $(window).width() *2;   

	// Set  viewport 
	$('.sign').css({height:windowHeight -80});
	$('.sign').css({width:windowWidth -80});
	$('.interior').css({width:windowWidthDouble});
	$('.sign .title').css({width:windowWidth -80});
	$('.sign .title .wrapper').css({paddingTop:windowHeightHalf -100});


	$('.search_button').click( function() {
	    $('#plate_search').addClass("active");	
	    $('#plate_search').focus();	
	    $('.title h1').addClass("active");	
	});
	$('.make_button').click( function() {
		$('.interior').animate({marginLeft:-windowWidth /2 -95}, 500);
	});


})

$(window).resize(function() {
	var windowHeight = $(window).height();   
	var windowWidth = $(window).width();   

	$('.sign').css({height:windowHeight -80});
	$('.sign').css({width:windowWidth -80});
})



