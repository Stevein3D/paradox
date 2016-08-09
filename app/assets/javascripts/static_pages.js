$(document).ready(function(){
    $(".click-me").click(function(){
    	$(this).hide();
        $('#taglineCarousel > .carousel-inner > .active > .row > .text-center > .tagline-source').show();
    });

    var score = 0;

    $(".correct").click(function(){
    	$(this).animate({ backgroundColor: '#00cc00'}, 500);
    	$(this).parent().next().next().children(".correct-text").animate({opacity: 1}, 300);
    	score += 1;
    	document.getElementById("score").innerHTML = score;
    });
    

    $(".incorrect").click(function(){
    	$(this).animate({ backgroundColor: '#cc3300'}, 500);
    	$(this).parent().next().next().children(".incorrect-text").animate({opacity: 1}, 300);
    	score -= 1;
    	document.getElementById("score").innerHTML = score;
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
		var $description = $(this).attr('alt');
		$('iframe').attr('src',"http://player.vimeo.com/video/" + $url + "?autoplay=1");
		document.getElementById("vid-desc").innerHTML = $description;
	});


});

