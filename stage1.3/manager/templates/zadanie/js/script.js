new Mmenu(document.querySelector('#menu'));
$(document).ready(function(){
  var owl = $('.owl-carousel');
	owl.owlCarousel({
		items:1,
		loop:true,
		dots:true,
		margin:0,
		autoplay:true,
		autoplayTimeout:5000,
		autoplayHoverPause:true
	});
	owl.trigger('play.owl.autoplay',[5000])
});

$('#modalz').click(function(event) {
  event.preventDefault();
  this.blur();
  $.get(this.href, function(html) {
	$(html).appendTo('body').modal();
  });
});