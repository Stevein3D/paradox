$(document).ready(function(){
    $(".click-me").click(function(){
    	$(this).hide();
        $('#taglineCarousel > .carousel-inner > .active > .row > .text-center > .tagline-source').show();
    });

    $(".audioButton").on("click", function() {
  		$(".audio-play")[0].currentTime = 0;
  		return $(".audio-play")[0].play();
	});

	$(".ne-face")
	  .mouseenter(function(){
		$(".ne-face, .origin-face").animate({ backgroundColor: 'purple'}, 300);
		$(".sw-face").animate({ backgroundColor: 'transparent'}, 300);
	  })
	  .mouseleave(function(){
	  	
	  });

	$(".sw-face")
	  .mouseenter(function(){
		$(".sw-face, .origin-face").animate({ backgroundColor: 'green'}, 300);
		$(".ne-face").animate({ backgroundColor: 'transparent'}, 300);
	  })
	  .mouseleave(function(){
	  	
	  });

});

