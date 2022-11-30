/***************************************************
==================== JS INDEX ======================
****************************************************
01. PreLoader Js
02. Mobile Menu Js
03. Sidebar Js
04. Cart Toggle Js
05. Sticky Header Js
06. Data-Background Js
07. Scroll To Top Js
08. Hero Slider Js
09. Testimonial Js
10. Brand Slider Js ( Home 1 )
11. Testimonial Slider Js ( Home 1 )
12. Testimonial Slider Js ( Home 2 )
13. Masonary Js
14. WoW Js
15. Cart Plus Minus Js
16. Show Login Toggle Js
17. Show Coupon Toggle Js
18. Create An Account Toggle Js
19. Shipping Box Toggle Js
20. Counter Up Js
21. Shipping Box Toggle Js
****************************************************/

(function ($) {
"use strict";

	var windowOn = $(window);
	////////////////////////////////////////////////////
    // 01. PreLoader Js
	windowOn.on('load',function() {
		$("#loading").fadeOut(500);
	});


	////////////////////////////////////////////////////
    // 02. Mobile Menu Js
	$('#mobile-menu').meanmenu({
		meanMenuContainer: '.mobile-menu',
		meanScreenWidth: "991",
		meanExpand: ['<i class="fal fa-plus"></i>'],
	});


	////////////////////////////////////////////////////
    // 03. Sidebar Js
	$("#sidebar-toggle").on("click", function () {
		$(".sidebar__area").addClass("sidebar-opened");
		$(".body-overlay").addClass("opened");
	});
	$(".sidebar__close-btn").on("click", function () {
		$(".sidebar__area").removeClass("sidebar-opened");
		$(".body-overlay").removeClass("opened");
	});

	////////////////////////////////////////////////////
    // 04. Cart Toggle Js
	$(".cart-toggle-btn").on("click", function () {
		$(".cartmini__wrapper").addClass("opened");
		$(".body-overlay").addClass("opened");
	});
	$(".cartmini__close-btn").on("click", function () {
		$(".cartmini__wrapper").removeClass("opened");
		$(".body-overlay").removeClass("opened");
	});
	$(".body-overlay").on("click", function () {
		$(".cartmini__wrapper").removeClass("opened");
		$(".sidebar__area").removeClass("sidebar-opened");
		$(".body-overlay").removeClass("opened");
	});




	////////////////////////////////////////////////////
    // 05. Sticky Header Js
	windowOn.on('scroll', function () {
		var scroll = $(window).scrollTop();
		if (scroll < 100) {
			$("#header-sticky").removeClass("sticky");
		} else {
			$("#header-sticky").addClass("sticky");
		}
	});

	////////////////////////////////////////////////////
    // 06. Data-Background Js
	$("[data-background").each(function () {
		$(this).css("background-image", "url( " + $(this).attr("data-background") + "  )");
	});

	


	////////////////////////////////////////////////////
    // 07. Scroll To Top Js
	function smoothSctollTop() {
		$('.smooth-scroll a').on('click', function (event) {
			var target = $(this.getAttribute('href'));
			if (target.length) {
				event.preventDefault();
				$('html, body').stop().animate({
					scrollTop: target.offset().top - 0
				}, 1500);
			}
		});
	}
	smoothSctollTop();

	// Show or hide the sticky footer button
	windowOn.on('scroll', function(event) {
		if($(this).scrollTop() > 600){
			$('#scroll').fadeIn(200)
		} else{
			$('#scroll').fadeOut(200)
		}
	});

	//Animate the scroll to yop
	$('#scroll').on('click', function(event) {
		event.preventDefault();

		$('html, body').animate({
			scrollTop: 0,
		}, 1500);
	});

	////////////////////////////////////////////////////
    // 08. Hero Slider Js
	function mainSlider() {
	var BasicSlider = $('.slider-active');
	BasicSlider.on('init', function (e, slick) {
		var $firstAnimatingElements = $('.single-slider:first-child').find('[data-animation]');
		doAnimations($firstAnimatingElements);
	});
	BasicSlider.on('beforeChange', function (e, slick, currentSlide, nextSlide) {
		var $animatingElements = $('.single-slider[data-slick-index="' + nextSlide + '"]').find('[data-animation]');
		doAnimations($animatingElements);
	});
	BasicSlider.slick({
		autoplay: true,
		autoplaySpeed: 8000,
		dots: true,
		fade: true,
		arrows: false,
		prevArrow: '<button type="button" class="slick-prev"><i class="fal fa-angle-left"></i></button>',
		nextArrow: '<button type="button" class="slick-next"><i class="fal fa-angle-right"></i></button>',
		responsive: [{
		breakpoint: 767,
		settings: {
			dots: false,
			arrows: false
		}
		}]
	});

	function doAnimations(elements) {
		var animationEndEvents = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
		elements.each(function () {
		var $this = $(this);
		var $animationDelay = $this.data('delay');
		var $animationType = 'animated ' + $this.data('animation');
		$this.css({
			'animation-delay': $animationDelay,
			'-webkit-animation-delay': $animationDelay
		});
		$this.addClass($animationType).one(animationEndEvents, function () {
			$this.removeClass($animationType);
		});
		});
	}
	}
	mainSlider();


	////////////////////////////////////////////////////
	// 09. Testimonial Js
	$('.testimonial__apper').slick({
		slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		dots: true,
		asNavFor: '.testimonial__nav',

	});
	$('.testimonial__nav').slick({
		slidesToShow: 3,
		slidesToScroll: 1,
		asNavFor: '.testimonial__wrapper',
		dots: false,
		centerMode: true,
		centerPadding: 0,
		focusOnSelect: true,
		arrows: false,
		prevArrow: '<button type="button" class="slick-prev"><i class="fas fa-angle-left"></i></button>',
		nextArrow: '<button type="button" class="slick-next"><i class="fas fa-angle-right"></i></button>',
		responsive: [
			{
				breakpoint: 576,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1
				}
			}
		]
	});

	////////////////////////////////////////////////////
    // 10.Brand Slider Js ( Home 1 )
	$('.brand__slider').owlCarousel({
		loop:true,
		margin:4,
		autoplay:false,
		autoplayTimeout:3000,
		smartSpeed:500,
		items:6,
		navText:['<button><i class="fal fa-angle-left"></i></button>','<button><i class="fal fa-angle-right"></i></button>'],
		nav:false,
		dots:false,
		responsive:{
			0:{
				items:1
			},
			576:{
				items:2
			},
			767:{
				items:3
			},
			992:{
				items:4
			},
			1200:{
				items:5
			},
			1400:{
				items:5
			}
		}
	});
	
	////////////////////////////////////////////////////
    // 11. Testimonial Slider Js ( Home 1 )
	$('.testimonial__slider').owlCarousel({
		loop:true,
		margin:30,
		autoplay:false,
		autoplayTimeout:3000,
		smartSpeed:500,
		items:6,
		navText:['<button><i class="fal fa-angle-left"></i></button>','<button><i class="fal fa-angle-right"></i></button>'],
		nav:false,
		dots:true,
		responsive:{
			0:{
				items:1
			},
			576:{
				items:2
			},
			767:{
				items:2
			},
			992:{
				items:3
			},
			1200:{
				items:4
			},
			1400:{
				items:4
			}
		}
	});
	
	////////////////////////////////////////////////////
    // 12. Testimonial Slider Js ( Home 2 )
	$('.testimonial__slider-2').owlCarousel({
		loop:true,
		margin:30,
		autoplay:false,
		autoplayTimeout:3000,
		smartSpeed:500,
		items:6,
		navText:['<button><i class="fal fa-angle-left"></i></button>','<button><i class="fal fa-angle-right"></i></button>'],
		nav:false,
		dots:true,
		responsive:{
			0:{
				items:1
			},
			576:{
				items:1
			},
			767:{
				items:2
			},
			992:{
				items:2
			},
			1200:{
				items:2
			},
			1400:{
				items:2
			}
		}
	});


	////////////////////////////////////////////////////
    // 13. Masonary Js
	$('.grid').imagesLoaded( function() {
		// init Isotope
		var $grid = $('.grid').isotope({
		  itemSelector: '.grid-item',
		  percentPosition: true,
		  masonry: {
			// use outer width of grid-sizer for columnWidth
			columnWidth: '.grid-item',
		  }
		});


	// filter items on button click
	$('.masonary-menu').on( 'click', 'button', function() {
	  var filterValue = $(this).attr('data-filter');
	  $grid.isotope({ filter: filterValue });
	});

	//for menu active class
	$('.masonary-menu button').on('click', function(event) {
		$(this).siblings('.active').removeClass('active');
		$(this).addClass('active');
		event.preventDefault();
	});

	});


	////////////////////////////////////////////////////
    // 14. WoW Js
	new WOW().init();

	////////////////////////////////////////////////////
	// 15. Cart Plus Minus Js
	$('.cart-minus').click(function () {
		var $input = $(this).parent().find('input');
		var count = parseInt($input.val()) - 1;
		count = count < 1 ? 1 : count;
		$input.val(count);
		$input.change();
		return false;
	});
	$('.cart-plus').click(function () {
		var $input = $(this).parent().find('input');
		$input.val(parseInt($input.val()) + 1);
		$input.change();
		return false;
	});




	////////////////////////////////////////////////////
	// 16. Show Login Toggle Js
	$('#showlogin').on('click', function () {
		$('#checkout-login').slideToggle(900);
	});

	////////////////////////////////////////////////////
	// 17. Show Coupon Toggle Js
	$('#showcoupon').on('click', function () {
		$('#checkout_coupon').slideToggle(900);
	});

	////////////////////////////////////////////////////
	// 18. Create An Account Toggle Js
	$('#cbox').on('click', function () {
		$('#cbox_info').slideToggle(900);
	});

	////////////////////////////////////////////////////
	// 19. Shipping Box Toggle Js
	$('#ship-box').on('click', function () {
		$('#ship-box-info').slideToggle(1000);
	});


	////////////////////////////////////////////////////
	// 20. Counter Up Js
	$('.counter').counterUp({
		delay: 10,
		time: 1000
	});
	

	////////////////////////////////////////////////////
	// 21. Shipping Box Toggle Js
	if ($('.scene').length > 0 ) {
		$('.scene').parallax({
			scalarX: 10.0,
			scalarY: 15.0,
		}); 
	};

})(jQuery);