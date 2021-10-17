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

$('body').on('click', 'span.list-item', function(){
	var selected = $(this).text();
	$(this).parents(".dropdown").find(".dropdown-content").removeClass("show");
	$(this).parents(".dropdown").find("input.dropbtn").val(selected);
	$(this).parents(".dropdown").find("input.dropbtn").attr("data-prev-selected", selected);
});

$("input.dropbtn, .dropicon").click(function(){
	$(this).parent().find("input.dropbtn").val('').focus();
});

class Dropdown {
	
	constructor(url) {
		this.url = url;
		fetch(this.url)
					.then(response => response.json())
					.then(json => {this.object = json});
	}
	
	setBlockId(block_id) {
		this.elm = $("#"+block_id);
	}
	
	getFilteredList(){
		this.filtered_list = [];
		this.input = this.elm.find("input.dropbtn").val();
		this.z = 0;
		for (this.i = 0; this.i < this.object.length; this.i++) {
			this.txtValue = this.object[this.i].title;
			if (this.txtValue.match("^"+this.input)) {
				this.filtered_list.push(this.txtValue);
				this.z++;
			}
		}
	}
	
	showDropdown(){
		var elm = this.elm;
		elm.find(".dropdown-list-items").empty();
		this.filtered_list.forEach(function(item){
			elm.find(".dropdown-list-items").append('<span class="list-item">'+item+'</span>');
		});
		if(this.z > 5) {
			elm.find(".dropdown-list-items").addClass("scroll");
		} else {
			elm.find(".dropdown-list-items").removeClass("scroll");
		}
		elm.find(".dropdown-content").addClass("show");
	}
	
	setPosition(){
		this.height_item = this.elm.find(".list-item").outerHeight();
		if(this.z > 5) {
			this.height_dropdown = this.height_item*5;
		} else {
			this.height_dropdown = this.z*this.height_item;
		}
		this.position = this.height_dropdown*-1;	
		this.input_top = this.elm.offset().top;
		this.input_bottom = $(window).height() - (this.input_top + this.elm.outerHeight());
		if(this.input_top > this.height_dropdown) {
			this.elm.find(".dropdown-content").css('top', this.position);
		}
	}
}

var obj = new Dropdown('https://jsonplaceholder.typicode.com/todos/');

$("input.dropbtn, .dropicon").on("keyup click",function(){
	var block_id = $(this).parents(".dropdown").attr("id");
	obj.setBlockId(block_id);
	obj.getFilteredList();
	obj.showDropdown();
	obj.setPosition();
})