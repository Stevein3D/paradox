$(document).ready(function(){
    $(".click-me").click(function(){
    	$(this).hide();
        $('#taglineCarousel > .carousel-inner > .active > .row > .text-center > .tagline-source').show();
    });

    $(".audioButton").on("click", function() {
  		$(".audio-play")[0].currentTime = 0;
  		return $(".audio-play")[0].play();
	});

});

