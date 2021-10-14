var object = "";
fetch('https://jsonplaceholder.typicode.com/todos/')
	.then(response => response.json())
	.then(json => {object = json});
	
$(document).mouseup(function (e){
	var div = $(".dropdown .show");
	if (!div.is(e.target) && div.has(e.target).length === 0) {
		var prev_selected = $(div).parent().find("input.dropbtn").attr("data-prev-selected");  
		$(div).parent().find("input.dropbtn").val(prev_selected);
		$(div).removeClass("show");
	}
});

$(window).on('resize scroll', function(){
	$(".dropdown-content").removeClass("show");
	$("input.dropbtn").blur();
});

$("input.dropbtn").click(function(){
	var height_dropdown = 212;
	var elm = $(this).parent();
	var input_top = elm.offset().top;
	var input_bottom = $(window).height() - (input_top + elm.outerHeight());
	var input_left = elm.offset().left;
	var input_right = $(window).width() - (input_left + elm.outerWidth());
	var position = "";
	
	if(input_left > height_dropdown) {position = "left";}
	if(input_right > height_dropdown) {position = "right";}
	if(input_top > height_dropdown) {position = "top";}
	if(input_bottom > height_dropdown) {position = "bottom";}
	
	$(this).parent().find(".dropdown-content").addClass("show").attr("data-position", position);
	$(this).val('');
});

$('body').on('click', 'span.list-item', function(){
	var selected = $(this).text();
	$(this).parents(".dropdown").find(".dropdown-content").removeClass("show");
	$(this).parents(".dropdown").find("input.dropbtn").val(selected);
	$(this).parents(".dropdown").find("input.dropbtn").attr("data-prev-selected", selected);
});

function filterFunction() {
	var input = $("input.dropbtn").val();
	var z = 0;
	$(".dropdown-list-items").empty();
	for (i = 0; i < object.length; i++) {
		var txtValue = object[i].title;
 		if (txtValue.match("^"+input)) {
			var elm = $(".dropdown-list-items").append('<span class="list-item">'+txtValue+'</span>');
			z++;
		}
	}
	if(z > 5) {
		$(".dropdown-list-items").addClass("scroll");
	} else {
		$(".dropdown-list-items").removeClass("scroll");
	}
};