$(document).ready(function(){
    $(".click-me").click(function(){
    	$(this).hide();
        $('#taglineCarousel > .carousel-inner > .active > .row > .text-center > .tagline-source').show();
    });

    $(".audioButton").on("click", function() {
  		$(this).children(".audio-play")[0].currentTime = 0;
  		return $(this).children(".audio-play")[0].play();
	});

	$(".ne-face")
	  .mouseenter(function(){
		$(".ne-face, .origin-face").animate({ backgroundColor: 'blue'}, 300);
		$(".title-face").animate({color: 'white'}, 300);
		$(".sw-face").animate({ backgroundColor: 'transparent'}, 300);
		$(".person-face").animate({color: 'transparent'}, 300);
	});

	$(".sw-face")
	  .mouseenter(function(){
		$(".sw-face, .origin-face").animate({ backgroundColor: 'green'}, 300);
		$(".person-face").animate({color: 'white'}, 300);
		$(".ne-face").animate({ backgroundColor: 'transparent'}, 300);
		$(".title-face").animate({color: 'transparent'}, 300);
	});

	$(".cube-container").mouseleave(function(){
	  $(".sw-face, .ne-face, .origin-face").animate({ backgroundColor: 'transparent'}, 300);
	  $(".title-face, .person-face").animate({color: 'transparent'}, 300);
	});

	$('.video-thumb').click(function(){
		var $url = $(this).attr('id');
		$('iframe').attr('src',"http://player.vimeo.com/video/" + $url + "?autoplay=1");
	});


});

