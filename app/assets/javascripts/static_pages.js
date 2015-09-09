$(document).ready(function(){
    $(".click-me").click(function(){
    	$(this).hide();
        $('#taglineCarousel > .carousel-inner > .active > .row > .text-center > .tagline-source').show();
    });
});