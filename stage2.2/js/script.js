var object = "";
fetch('https://jsonplaceholder.typicode.com/todos/')
	.then(response => response.json())
	.then(json => {object = json});
	
$(document).mouseup(function (e){
	var div = $(".dropdown");
	if (!div.is(e.target) && div.has(e.target).length === 0) {
		$("#myDropdown").removeClass("show");
	}
});

$("#myInput").click(function(){
	$("#myDropdown").addClass("show");
});

$('body').on('click', 'span.list-item', function(){
	var selected = $(this).text();
	console.log("Click");
	$("#myDropdown").removeClass("show");
	$("input#myInput").val(selected);
});

function filterFunction() {
	var input = $("#myInput").val();
	var filter = input.toUpperCase();
	var z = 0;
	var elm_height = 0;
	$(".dropdown-list-items").empty();
	for (i = 0; i < object.length; i++) {
		var txtValue = object[i].title;
 		if (txtValue.toUpperCase().indexOf(filter) > -1) {
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