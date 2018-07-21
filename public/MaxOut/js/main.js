/*price range*/

 $('#sl2').slider();

	var RGBChange = function() {
	  $('#RGB').css('background', 'rgb('+r.getValue()+','+g.getValue()+','+b.getValue()+')')
	};

/*scroll to top*/
$(document).ready(function(){

	$(function () {
		$.scrollUp({
	        scrollName: 'scrollUp', // Element ID
	        scrollDistance: 300, // Distance from top/bottom before showing element (px)
	        scrollFrom: 'top', // 'top' or 'bottom'
	        scrollSpeed: 300, // Speed back to top (ms)
	        easingType: 'linear', // Scroll to top easing (see http://easings.net/)
	        animation: 'fade', // Fade, slide, none
	        animationSpeed: 200, // Animation in speed (ms)
	        scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
					//scrollTarget: false, // Set a custom target element for scrolling to the top
	        scrollText: '<i class="fa fa-angle-up"></i>', // Text for element, can contain HTML
	        scrollTitle: false, // Set a custom <a> title if required.
	        scrollImg: false, // Set true to use image
	        activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
	        zIndex: 2147483647 // Z-Index for the overlay
		});
	});

});
$( window ).load(function() {
  $("#owl-out").owlCarousel({itemsTablet : [800, 3],itemsMobile : [500, 3],navigation: false,autoPlay : 1500,items : 3,scrollPerPage : false});
    $("#owl-Max").owlCarousel();
    $('.datepicker').datepicker();
});



    $(".single-element").hover(function(){
        $(this).children(".elementinfo").children(".links").children("ul").addClass("bounceInLeft");
        $(this).children(".elementinfo").children(".links").children("ul").removeClass("bounceOutLeft");
    }, function(){
        $(this).children(".elementinfo").children(".links").children("ul").removeClass("bounceInLeft");
        $(this).children(".elementinfo").children(".links").children("ul").addClass("bounceOutLeft");
    });


    $(".view-product").find("img").attr({src:$("#similar-product img:first").attr("src")});
    $("#similar-product img").click(function(){
        var imgg = $(this).attr("src");
        $(".view-product").find("img").attr({src:imgg});
        return false;
    });

    $(".login-btn").click(function(){
        $("#Login").fadeIn();
		$('#mask').fadeIn();
    });

    $(".compose-user-option").click(function(){
        $(".compose-user").show();
    });
    $(".compose-notuser").click(function(){
        $(".compose-user").hide();
    });

    $(".confirm").click(function(){
        if (confirm('Changing Data Will Cost 50 LE')) {
        } else {
            return false;
        }
    });

    $(".register-btn").click(function(){
        $("#Register").fadeIn();
		$('#mask').fadeIn();
        $('.datepicker').datepicker();
    });


    $(".add-to-cart").click(function(){
        $("#Make-Order").fadeIn();
		$('#mask').fadeIn();
    });

    $("#mask,.close").click(function(){
        $("#mask").fadeOut();
        $("#Login").fadeOut();
        $("#Register").fadeOut();
        $("#Make-Order").fadeOut();
    });

    $(".compose").click(function(){
        $(this).siblings("form").slideToggle();
    });

    $(document).keyup(function(e) {
        if (e.keyCode == 27) {
          $("#mask").fadeOut();
          $("#Login").fadeOut();
          $("#Register").fadeOut();
          $("#Make-Order").fadeOut();
        };
    });


    $("tbody").find("tr:first").addClass("White");
    for(i=1;i<=1000;i++){
    $(".White").next("tr").addClass("Gray");
    $(".Gray").next("tr").addClass("White");
    }

    $(".reply-msg").click(function() {

        $(this).siblings(".reply-form").slideToggle();
        $(".reply-form").not($(this).siblings(".reply-form")).slideUp();
    });

    $(".tree-element").hover(function(){
        $(this).parent("div").css({"z-index": "3", "transform": "scale(1.3)"});
        $(this).siblings(".information").css({"opacity": "1", "width": "200%", "margin-left": "-50%"});
        $(this).siblings(".information").find("span").delay(800).fadeIn(300);
    }, function(){
        $(this).parent("div").css({"z-index": "2", "transform": "scale(1)"});
        $(this).siblings(".information").css({"opacity": "0", "width": "0%", "margin-left": "45%"});
        $(this).siblings(".information").find("span").hide();
    });








    /* Tweeter Start */
    window.twttr = (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0],
    t = window.twttr || {};
  if (d.getElementById(id)) return t;
  js = d.createElement(s);
  js.id = id;
  js.src = "https://platform.twitter.com/widgets.js";
  fjs.parentNode.insertBefore(js, fjs);

  t._e = [];
  t.ready = function(f) {
    t._e.push(f);
  };

  return t;
}(document, "script", "twitter-wjs"));

 /* Tweeter End */


