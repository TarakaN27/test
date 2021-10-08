$(document).ready(function(){
	var owl = $('.owl-carousel');
	owl.owlCarousel({
		items:3,
		loop:true,
		nav: true,
		dots: false,
		navText: ['<span class="arrow arrow-prev"></span>','<span class="arrow arrow-next"></span>'],
		margin:10,
		autoplay:true,
		autoplayTimeout:5000,
		autoplayHoverPause:true
	});
	owl.trigger('play.owl.autoplay',[5000])
});